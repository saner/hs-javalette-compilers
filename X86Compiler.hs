module X86Compiler where

import Prelude
import Control.Monad
import Control.Monad.State
import qualified Data.Map as Map
import System.IO
import System.IO.Unsafe
import Debug.Trace

import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BSC8

import JavaletteLexer
import JavaletteParser

import qualified LlvmCompiler as LC


-- Opis rejestrow
-- EAX - zwracanie wartosci dla int, char, oraz swobodnego uzycia
-- EDX - swobodnego uzycia
-- ECX - swobodnego uzycia
-- ESP - Stack Pointer
-- EBP - Base/Frame Pointer
data Register = RegEax | RegEcx | RegEdx | RegEsp | RegNone | RegEbp
                deriving(Eq,Ord)

 -- przechowuje stan wszystkich rejestrow
 -- rejestr moze byc zajety jakas zmienna lub byc pusty
type RegState =  (Map.Map Register (Maybe Ident), Register)

-- wszystkie zmienne sa tutaj zarejestrowane
-- kazda zmienna moze byc w rejestrze i/lub na stosie
-- jej pozycja na stosie jest liczona w stosunku do rejestru EBP
data VarLoc = LocNone | LocReg Register | LocStack Int
                deriving(Eq,Ord)
type VarState = Map.Map Ident (Ident, Type, Register, VarLoc)

--data Var = Ident VarLoc

-- informacje o stanie stosu sa przechowywane 
-- pod informacja jak gleboko jest stos w stosunku do EBP
-- stos roznie w dol
type StackPtr = Int

-- stan wykorzystywany podczas tlumaczenia funkcji
type CompilerState = ( RegState, VarState , StackPtr )

initState = ((Map.fromList [(RegEax, Nothing), (RegEcx, Nothing), (RegEdx, Nothing)], RegEax), Map.empty, 0)

type Context a = State CompilerState a

type Label = String

data Arg = Var VarLoc
         | ConstInt Int
         | Label String
        deriving(Eq,Ord)

data X86Code = X86BinOp Ident Arg Arg
             | X86UnOp Ident Arg
             | X86NoOp Ident
             | X86Label Label
             | X86Function Label
             | X86Call Ident
             | X86Comment Label
             | X86NewLine
            deriving(Eq,Ord)

type Code = [X86Code]


-- wyswietlenie kodu

instance Show Register where
    show RegEax = "%eax"
    show RegEcx = "%ecx"
    show RegEdx = "%edx"
    show RegEsp = "%esp"
    show RegEbp = "%ebp"
    show RegNone = "%%"

instance Show VarLoc where
    show LocNone = ""
    show (LocReg reg) = show reg
    show (LocStack int) = (show int) ++ "(" ++ (show RegEbp) ++ ")"

instance Show Arg where
    show (Var var) = show var
    show (ConstInt int) = "$" ++ (show int)
    show (Label label) = label

instance Show X86Code where
    show (X86BinOp ident arg1 arg2) = ident ++ " " ++ (show arg1) ++ ", " ++ (show arg2)
    show (X86UnOp ident arg) = ident ++ " " ++ (show arg)
    show (X86NoOp ident) = ident
    show (X86Label label) =  label ++ ":"
    show (X86Function label) =  "_" ++ label ++ ":"
    show (X86Call label) =  "call _" ++ label
    show (X86Comment comment) =  "# " ++ comment
    show (X86NewLine) =  "\n"



--- kod programu


compileProgram :: Program -> String
compileProgram program =
    let (code, stringConstants) = compileToLlvmCode program

        -- podzielenie na funkcje kodu
        funs = splitByFunction code

        -- analiza funkcji
        x86code = compileFunctions funs   

        -- cialo w wersij stringowej
        x86CodeString = foldl (\s c -> s ++ "\n" ++ (show c)) "" x86code

        -- naglowek programu
        header = ".global _main \n"

        builtInFunDecl = loadBuiltInFunDecl

        --in show $ last (splitByFunction code)
        in header ++ "\n" ++ x86CodeString ++ "\n\n" ++ builtInFunDecl


loadBuiltInFunDecl :: String
loadBuiltInFunDecl = unsafePerformIO (readFile "JavaletteStdLibBackend.s")


compileToLlvmCode :: Program -> ([LC.LlvmCode], [(Ident, String)])
compileToLlvmCode program = 
    let (code, (stringConstants,_,_,_)) = runState (LC.compileProgramFunctions program) ([], LC.initUsedVarNames, Map.empty, [])
    in (code, stringConstants)


splitByFunction :: [LC.LlvmCode] -> [(LC.LlvmCode,[LC.LlvmCode])]
splitByFunction [] = []
splitByFunction code =
    let fun = head code
        rest = tail code
        (body, nextFun) = getBody rest []

        in [(fun, body)] ++ (splitByFunction nextFun)
            where
                getBody [] b = (b, [])
                getBody c b = 
                    case c of
                        (LC.LlvmEndFunction:_) -> (b, tail c) -- wybranie tylko ciala bez znacznika konca funkcji
                        _ -> getBody (tail c) (b ++ [head c])


compileFunctions :: [(LC.LlvmCode, [LC.LlvmCode])] -> Code
compileFunctions [] = []
compileFunctions (fun:funs) =
    let (compiledFunction, state) = runState ( compileFunction fun ) initState
    in trace (show state) (compiledFunction ++ ( compileFunctions funs )) 


-- funkcja dokonuje kompilacji ciala funkcji
-- z kodu llvm do x86
compileFunction :: (LC.LlvmCode, [LC.LlvmCode]) -> Context Code
compileFunction ((LC.LlvmFunction ident retType args), funCode) = do
    -- usuniecie label ENTER
    let noLbEnter = drop 1 funCode
    -- usuniecie rezerwacji miejsca na parametry przekazane do funkcji
    let noAllocasArgs = rmArgAlloca args noLbEnter
    -- usuniecie rezerwacji miejsca na wartosc zwracana
    let noAllocaRet = rmRetAlloca noAllocasArgs
    -- wybranie wszystkich allokow
    let localVars = map (\(LC.LlvmAlloca a) -> a) $ filter (\c -> case c of LC.LlvmAlloca a -> True; _ -> False) noAllocaRet 
    -- usuniecie allokacji zmiennych
    let noAllocas = filter (\c -> case c of LC.LlvmAlloca a -> False; _ -> True) noAllocaRet 
    -- dodanie argumentow do srodowiska
    addArgsToState args
    -- rejestracja miejsca na stosie na zmienne lokalne
    registerLocCode <- registerLocalVars localVars
    -- trzeba zmienic nazwy labelow dla aby byly zwiazane z nazwa funkcji
    -- poniewaz moga byc takie same we wszystkich funkcjach i to powoduje problemy
    let chLabels = changeLabels ident noAllocas
    -- kompilacja ciala metody
    bodyCode <- compileBody chLabels
    let header = [X86Function ident]
    let prolog = [X86UnOp "pushl" (Var (LocReg RegEbp))] ++
                 [X86BinOp "movl" (Var (LocReg RegEsp)) (Var (LocReg RegEbp))] ++
                 registerLocCode
    let epilog = [X86BinOp "movl" (Var (LocReg RegEbp)) (Var (LocReg RegEsp))] ++
                 [X86UnOp "popl" (Var (LocReg RegEbp))] ++
                 [X86NoOp "ret"]

    trace ("llvm: " ++ (foldl (\s l -> s ++ "\n" ++ (show l)) "" noAllocas)) 
          (return $ header ++ prolog ++ bodyCode ++ epilog)

-- zmiana nazw labeli i skokow
changeLabels :: Ident -> [LC.LlvmCode] -> [LC.LlvmCode]
changeLabels funName [] = []
changeLabels funName (c:cs) =
    case c of
        LC.LlvmLabel l -> [LC.LlvmLabel (funName ++ "_" ++ l)] ++ (changeLabels funName cs)
        LC.LlvmBr l -> [LC.LlvmBr (funName ++ "_" ++ l)] ++ (changeLabels funName cs)
        LC.LlvmBrCond cond l1 l2 -> [LC.LlvmBrCond cond (funName ++ "_" ++ l1) (funName ++ "_" ++ l2)] ++ (changeLabels funName cs)
        _ -> [c] ++ (changeLabels funName cs)


-- usuniecie rezerwacji miejsca na argumenty funkcji
rmArgAlloca :: [LC.OpArg] -> [LC.LlvmCode] -> [LC.LlvmCode]
rmArgAlloca args funCode =
    drop ((length args) * 2) funCode

-- usuniecie instrukcji rezerwujacej miejsce na wartosc zwracana przez funkcje
rmRetAlloca :: [LC.LlvmCode] -> [LC.LlvmCode]
rmRetAlloca funCode =
    drop 1 funCode

typeSize :: Type -> Int
typeSize typ =
    case typ of
        TypeInt -> 4
        TypeDouble -> 8
        TypeVoid -> 0
        TypeBoolean -> 4
        TypeAny -> 4

addArgsToState :: [LC.OpArg] -> Context ()
addArgsToState args = do
    -- dodaj argumenty poczytajac od pierwszego zwiekszajac
    -- za kazdym razem indeks o 4 dla Int i 8 dla double
    -- zaczynamy od + 8 bo miejsca na DL oraz adres powrotu
    add args 8
    
    where
        add [] pos = return ()
        add (arg:args) pos = do
            (regState, varState, stackPtr) <- get
            -- poniewaz w llvm tworzylismy nazwy zmiennych dla argumentow nazwa takiej zmiennej dostaje 0 dodtakowo, np a0  czy b0
            -- trzeba tak tez dodac do nazwy zmiennych bo one sa widoczne z 0 w kodzie dodatkowo a nie samej nazwie
            -- bo w llvm argumenty do funkcji byly nie zmienialne
            let argName = (LC.getVarName arg) ++ "0"
            let argType = (LC.getVarType arg)
            let argPos = LocStack pos
            let newVarState = Map.insert argName (argName, argType, RegNone, argPos) varState
            put (regState, newVarState, stackPtr)

            add args (pos + (typeSize (LC.getVarType arg)))

addVarToState :: LC.OpArg -> Context ()
addVarToState opArg = do
    (regState, varState, stackPtr) <- get
    let argName = (LC.getVarName opArg)
    let argType = (LC.getVarType opArg)
    --let newStackPtr = stackPtr - (typeSize argType)
    --let argPos = LocStack newStackPtr
    let newVarState = Map.insert argName (argName, argType, RegNone, LocNone) varState
    put (regState, newVarState, stackPtr)

allocStackForVar :: Ident -> Context ()
allocStackForVar ident = do
    (varName, varType, varReg, varLoc) <- findVar ident
    if varLoc == LocNone
        then do
            (regState, varState, stackPtr) <- get
            let newStackPtr = stackPtr - (typeSize varType)
            let varStackPos = LocStack newStackPtr
            let newVarState = Map.insert ident (varName, varType, varReg, varStackPos) varState
            put (regState, newVarState, newStackPtr)
        else  return () -- moze juz jest zarejestrowane miejsce dla danej zmiennej

findVarLoc :: LC.OpArg -> Context (Register, VarLoc)
findVarLoc opArg = do
    (regState, varState, stackPtr) <- get
    let argName = (LC.getVarName opArg)
    let var = Map.lookup argName varState
    case var of
        Just (ident, typ, reg, loc) -> return (reg, loc)
        Nothing ->  return (RegNone, LocNone)

findVar :: Ident -> Context (Ident, Type, Register, VarLoc)
findVar ident = do
    (regState, varState, stackPtr) <- get
    let var = Map.lookup ident varState
    case var of
        Just (ident, typ, reg, loc) -> return (ident, typ, reg, loc)
        Nothing ->  return ("", TypeAny, RegNone, LocNone)

setRegToVar :: Register -> Maybe Ident -> Context ()
setRegToVar reg maybeIdent = do
    ((stateReg, nextReg), varState, stackPtr) <- get
    let newStateReg = Map.insert reg maybeIdent stateReg
    put ((newStateReg, nextReg), varState, stackPtr)
    return ()

setVarRegLoc :: Ident -> Register -> Context ()
setVarRegLoc ident reg = do
    (varName, varType, varReg, varLoc) <- findVar ident
    (regState, varState, stackPtr) <- get
    let newVarState = Map.insert varName (varName, varType, reg, varLoc) varState
    put (regState, newVarState, stackPtr)

nextFreeReg :: Context Register
nextFreeReg = do
    ((stateReg, nextReg), varState, stackPtr) <- get
    let nextNextReg = case nextReg of
                            RegEax -> RegEcx
                            RegEcx -> RegEdx
                            RegEdx -> RegEax
    put ((stateReg, nextNextReg), varState, stackPtr)
    return nextReg

getRegState :: Register -> Context (Maybe Ident)
getRegState reg = do
    ((stateReg, nextReg), varState, stackPtr) <- get
    let foundReg = Map.lookup reg stateReg
    case foundReg of
        Just var  -> return var
        Nothing ->  return Nothing

moveVarToStack :: Ident -> Context Code
moveVarToStack ident = do
    allocStackForVar ident
    (fName, fType, fReg, fLoc) <- findVar ident
    setRegToVar fReg Nothing
    setVarRegLoc ident RegNone
    return $ [X86BinOp "movl" (Var (LocReg fReg)) (Var fLoc)]



moveVarToReg :: LC.OpArg -> Register -> Context Code
moveVarToReg opArg reg = do
    case opArg of
        LC.ConstInt int -> return $ [X86BinOp "movl" (ConstInt int) (Var (LocReg reg))]
        LC.ConstBoolean b -> do
                    let int = if b then 1 else 0
                    return $ [X86BinOp "movl" (ConstInt int) (Var (LocReg reg))]
        LC.Var _ _ -> do
            let varName = LC.getVarName opArg
            (varReg, varLoc) <- findVarLoc opArg
            regState <- getRegState reg

            if reg == varReg
                then return [] -- gdy zmienna jest juz w danym rejestrze
                else
                    case regState of
                        Nothing -> moveToReg varReg varName varLoc -- gdy rejestr jest pusty wystarczy przeniesc i aktualizowac informacje
                        Just fIdent -> do -- jest cos jest w rejestrze trzeba najpierw przeniesc te wartosc na stos
                                    movToStack <- moveVarToStack fIdent
                                    moving <- moveToReg varReg varName varLoc
                                    return $ movToStack ++ moving
            where
                moveToReg varReg varName varLoc =
                    if varReg == RegNone
                        then do -- jesli w tym momencie zmienna nie jest w zadnym rejestrze, to przenosimy ze stosu
                                setRegToVar reg (Just varName)
                                setVarRegLoc varName reg
                                return $ [X86BinOp "movl" (Var varLoc) (Var (LocReg reg))]
                        else do -- zmienna jest w jakims innym rejestrze przenosimy z tego rejestru
                                setRegToVar reg (Just varName)
                                setRegToVar varReg Nothing
                                setVarRegLoc varName reg
                                return $ [X86BinOp "movl" (Var (LocReg varReg)) (Var (LocReg reg))]


registerLocalVars :: [LC.OpArg] -> Context Code
registerLocalVars locals = do
    let size = sum $ map (\a -> typeSize $ LC.getVarType a) locals
    return [X86BinOp "subl" (ConstInt size) (Var (LocReg RegEsp))]  

compileBody :: [LC.LlvmCode] -> Context Code
compileBody code = do
    compile code
    where
        compile [] = return []
        compile (c:cs) = do
            c_com <- compileLlvmCode c
            cs_com <- compile cs
            return $ c_com ++ cs_com


compileLlvmCode :: LC.LlvmCode -> Context Code

compileLlvmCode LC.LlvmNewLine = do
    return [X86NewLine] 

compileLlvmCode (LC.LlvmComment comment) = do
    return [X86Comment comment] 

compileLlvmCode (LC.LlvmLabel label) = do
    return [X86Label label] 

compileLlvmCode (LC.LlvmBr label) = do
    return [X86UnOp "jmp" (Label label)] 

-- jako parametr do return zawsze jest zmienna
-- musi byc ona jest w rejestrze
-- bo wczesniej musiala byc do niego zaladowana
-- instrukcja LC.LlvmLoad
compileLlvmCode (LC.LlvmReturn opArg) = do
    (varReg, varStack) <- findVarLoc opArg
    if varReg == RegEax
        then return []
        else
            if (LC.getVarType opArg) == TypeVoid -- gdy jest void to nie usawiaj rejestru EAX
                then return []
                else return [X86BinOp "movl" (Var (LocReg varReg)) (Var (LocReg RegEax))] 

-- w LLVM potrzebny jest uchwyt do stringu
-- tutaj sie to nie przyda
compileLlvmCode (LC.LlvmStrPtr opArg len) = do
    return []

-- operacja LC.Load laduje z pamieci do rejestru
-- dlatego potrzebujemy wolny rejestr do tej operacji
compileLlvmCode (LC.LlvmLoad opArg1 opArg2) = do
    freeReg <- nextFreeReg
    move <- moveVarToReg opArg2 freeReg
    addVarToState opArg1
    setVarRegLoc (LC.getVarName opArg2) RegNone
    setVarRegLoc (LC.getVarName opArg1) freeReg
    setRegToVar freeReg (Just (LC.getVarName opArg1))
    return $ [X86Comment $ "LlvmLoad " ++ (show opArg1) ++ " " ++ (show opArg2)] ++
             move

-- zapisanie stanu opArg1 kotry jest zmienna tymczasowa
-- do zmiennej opaArg2 ktory jest zmienna stala
-- zmienna opArg1 moze byc w rejestrze lub stosie
-- to trzeba sprawdzic
compileLlvmCode (LC.LlvmStore opArg1 opArg2) = do
    freeReg <- nextFreeReg
    moveArg1 <- moveVarToReg opArg1 freeReg
    allocStackForVar (LC.getVarName opArg2)
    (_, _, _, arg2Loc) <- findVar (LC.getVarName opArg2)
    return $ [X86Comment $ "LlvmStore " ++ (show opArg1) ++ " " ++ (show opArg2)] ++
             moveArg1 ++
             [X86BinOp "movl" (Var (LocReg freeReg)) (Var arg2Loc)]

-- musimy odpalic funkcje najpierw umieszczajac na stosie parametry w odwrotnej kolejnosci
-- trzeba to zrobic rozsadnie aby nie generowac dodatkowych zmiennych na stosie
-- bo stos wywolan sie popsuje
compileLlvmCode (LC.LlvmCall retVar funName args) = do
    argsCode <- pushParams (reverse args)
    retCode <- case retVar of
                    LC.ConstVoid -> return []
                    LC.Var retId retTy -> do -- wartosc zwracana przez funkcje jest w EAX
                            addVarToState retVar
                            setVarRegLoc (LC.getVarName retVar) RegEax
                            setRegToVar RegEax (Just (LC.getVarName retVar))
                            return []


    return $ argsCode ++ [X86Call funName] ++ retCode

    where
        pushParams :: [LC.OpArg] -> Context Code
        pushParams [] = return []
        pushParams (arg:args) = do
            -- jesli jest zmienna w rejestrze to pushujemy z rejestru
            -- jesli jest na stosie to pushujemy ze stosu
            let argName = LC.getVarName arg
            (_, _, varReg, varLoc) <- findVar argName
            let argCode = case varReg of
                                RegNone -> case arg of
                                        LC.Var _ _ -> [X86UnOp "pushl" (Var varLoc)]
                                        LC.ConstInt int -> [X86UnOp "pushl" (ConstInt int)]
                                _ ->  [X86UnOp "pushl" (Var (LocReg varReg))]
            argsCode <- pushParams args
            return $ argCode ++ argsCode

-- porownanie przy uzyciu 2 rejestrow
-- zwroecnie wyniku w pierwszym rejestrze
compileLlvmCode (LC.LlvmRelOp retVar opType arg1 arg2) = do
    freeReg1 <- nextFreeReg
    freeReg2 <- nextFreeReg
    move1 <- moveVarToReg arg1 freeReg1
    move2 <- moveVarToReg arg2 freeReg2
    addVarToState retVar
    setVarRegLoc (LC.getVarName retVar) freeReg1
    setRegToVar freeReg1 (Just (LC.getVarName retVar))
    let op = case opType of
                LC.Lt -> "JL"
                LC.Le -> "JLE"
                LC.Gt -> "JG"
                LC.Ge -> "JGE"
                LC.Eq -> "JE"
                LC.Ne -> "JNE"
    return $ move1 ++ 
             move2 ++
             [X86BinOp "cmpl" (Var (LocReg freeReg1)) (Var (LocReg freeReg2))] ++
             [X86UnOp op (Label $ (LC.getVarName arg1) ++ (LC.getVarName arg2) ++ "_TRUE")] ++
             [X86BinOp "movl" (ConstInt 0) (Var (LocReg freeReg1))] ++ -- co robimy gdy zachodzi warunek
             [X86UnOp "jmp" (Label $ (LC.getVarName arg1) ++ (LC.getVarName arg2) ++ "_END")] ++
             [X86Label ((LC.getVarName arg1) ++ (LC.getVarName arg2) ++ "_TRUE")] ++
             [X86BinOp "movl" (ConstInt 1) (Var (LocReg freeReg1))] ++ -- co robimy gdy warunek NIE zachodzi
             [X86Label ((LC.getVarName arg1) ++ (LC.getVarName arg2) ++ "_END")]

-- wykorzystam 2 rejestry do sprawdzenia stanu zmiennej
-- w jednym bedzie zmienna a w drugim 0 do porowaniani
compileLlvmCode (LC.LlvmBrCond opArg label1 label2) = do
    freeReg1 <- nextFreeReg
    freeReg2 <- nextFreeReg
    move1 <- moveVarToReg opArg freeReg1
    let move2 = [X86BinOp "movl" (ConstInt 1) (Var (LocReg freeReg2))]
    return $ move1 ++ 
             move2 ++
             [X86BinOp "cmpl" (Var (LocReg freeReg1)) (Var (LocReg freeReg2))] ++
             [X86UnOp "JNE" (Label label1)] ++ -- jesli zachodzi to skaczemu do TRUE
             [X86UnOp "jmp" (Label label2)] -- co robimy gdy NIE zachodzi warunek


compileLlvmCode (LC.LlvmBinOp retVar arType arg1 arg2) = do
    let (freeReg1, freeReg2) =
            case arType of
                LC.Add -> (RegEax, RegEdx)
                LC.Sub -> (RegEax, RegEdx)
                LC.Mul -> (RegEax, RegEdx)
                LC.Div -> (RegEdx, RegEdx)
                LC.Rem -> (RegEax, RegEdx)

    move1 <- moveVarToReg arg1 freeReg1
    move2 <- moveVarToReg arg2 freeReg2
    addVarToState retVar
    setVarRegLoc (LC.getVarName retVar) freeReg1
    setRegToVar freeReg1 (Just (LC.getVarName retVar))
    let op = case arType of
                LC.Add -> "addl"
                LC.Sub -> "subl"
                LC.Mul -> "imull"
                LC.Div -> "idivl"
                LC.Rem -> "idivl"
    return $ move1 ++ 
             move2 ++
             [X86BinOp op (Var (LocReg freeReg2)) (Var (LocReg freeReg1))]

compileLlvmCode (LC.LlvmAnd retVar arg1 arg2) = do
    freeReg1 <- nextFreeReg
    freeReg2 <- nextFreeReg
    move1 <- moveVarToReg arg1 freeReg1
    move2 <- moveVarToReg arg2 freeReg2
    addVarToState retVar
    setVarRegLoc (LC.getVarName retVar) freeReg1
    setRegToVar freeReg1 (Just (LC.getVarName retVar))
    return $ move1 ++ 
             move2 ++
             [X86BinOp "andl" (Var (LocReg freeReg2)) (Var (LocReg freeReg1))]

compileLlvmCode (LC.LlvmOr retVar arg1 arg2) = do
    freeReg1 <- nextFreeReg
    freeReg2 <- nextFreeReg
    move1 <- moveVarToReg arg1 freeReg1
    move2 <- moveVarToReg arg2 freeReg2
    addVarToState retVar
    setVarRegLoc (LC.getVarName retVar) freeReg1
    setRegToVar freeReg1 (Just (LC.getVarName retVar))
    return $ move1 ++ 
             move2 ++
             [X86BinOp "orl" (Var (LocReg freeReg2)) (Var (LocReg freeReg1))]
