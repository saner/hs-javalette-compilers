module LlvmCompiler where

import Prelude
import Control.Monad
import Control.Monad.State
import qualified Data.Map as Map
import System.IO
import System.IO.Unsafe

import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BSC8

import JavaletteLexer
import JavaletteParser


-- typy zastosowane w programie

data VarDef = VarDef Ident Type Ident -- ideyntikator w programie, typ, identyfikator w kodzie
			deriving (Show, Eq)

data FunctionDef = FunctionDef Ident Type [Type]
				deriving (Show, Eq)

type VarDefTable = Map.Map Ident VarDef

type FunctionDefTable = Map.Map Ident FunctionDef

type Position = (Int, Int)


type ProgName = String

retValueName = "RETVALUE"

type Label = String

-- zawiera liste wykorzystanych identyfikatorow w programie 
-- rozwiazuje problem z blokami, gdzie moze zmienna o tej samej
-- nazwie wystapic w kilku blokach, musimy zmienic jej nazwe w pozostalych blokach
type UsedVarNames = Map.Map Ident (Ident, Int)  -- pelna nazwa, 1. czesc nazwy (String), 2. czesc nazwy (Int)

initUsedVarNames = Map.empty


-- LLVM wymaga deklarowania stalych stringowych na poczatku przed calym kodem
-- stale te beda gromaczone w liscie StringConstants
type StringConstants = [(Ident, String)]

type CompilerState = ( StringConstants, UsedVarNames, FunctionDefTable, [VarDefTable] )

type Context a = State CompilerState a



data OpArg = None
		   | Var Ident Type
		   | ConstVoid
		   | ConstInt Int
		   | ConstDouble Double
		   | ConstBoolean Bool
		   | ConstString String
			deriving (Eq)


data ArithOp = Add | Sub | Mul | Div | Rem
			 deriving (Eq)

data UnOp = Neg | Not
			 deriving (Eq)

data RelOp = Lt | Le | Gt | Ge | Eq | Ne
			 deriving (Eq)

-- w kazdym przypadku dochodzi do przypisania wartosc
data LlvmCode = LlvmCopy OpArg OpArg
			 | LlvmAlloca OpArg
			 | LlvmLoad OpArg OpArg
			 | LlvmStore OpArg OpArg
			 | LlvmBinOp OpArg ArithOp OpArg OpArg
			 | LlvmRelOp OpArg RelOp OpArg OpArg
			 | LlvmAnd OpArg OpArg OpArg
			 | LlvmOr OpArg OpArg OpArg
			 | LlvmBr Label
			 | LlvmBrCond OpArg Label Label
			 | LlvmLabel Label
			 | LlvmCall OpArg Ident [OpArg]
			 | LlvmFunction Ident Type [OpArg]
			 | LlvmEndFunction
			 | LlvmReturn OpArg
			 | LlvmStrPtr OpArg Int
			 | LlvmComment String
			 | LlvmNewLine
			 deriving (Eq)

type Code = [LlvmCode]

-- funkcje dodatkowe
-- funkcja wyrzucajaca zbedne informacje o zmiennej
-- ktore dostaje z parsera
-- dokladniej nie wspieram tablic

hahaVarToIndent :: Var -> Ident
hahaVarToIndent var =
	case var of
		VarNormal ident -> ident
		VarArray ident size -> ident

-- funkcje pomocnicze

addVarDef :: Ident -> Type -> Context ()
addVarDef ident typ = do

	tacVar <- getUnusedVarName ident

	(stringConstants, usedVarNames, funs, (table:tables)) <- get

	let newTable = Map.insert ident (VarDef ident typ tacVar) table

	put(stringConstants, usedVarNames, funs, (newTable:tables))

addFunctionDef :: FunctionDef -> Context ()
addFunctionDef (FunctionDef ident typ args)  = do
	(stringConstants, usedVarNames, funs, tables) <- get

	let newFuns = Map.insert ident (FunctionDef ident typ args) funs

	put (stringConstants, usedVarNames, newFuns, tables)


findVarDef :: Ident -> Context (Maybe VarDef)
findVarDef ident = do
	(stringConstants, usedVarNames, funs, tables) <- get
	return $ findInTables ident tables
	where
		findInTables ident (table:tables) =
			case Map.lookup ident table of
				Nothing -> findInTables ident tables
				Just var -> Just var
		findInTables ident [] = Nothing

findLlvmVarByVarName :: Ident -> Context OpArg
findLlvmVarByVarName ident = do
	foundVar <- findVarDef ident

	case foundVar of
		Just (VarDef _ typ tacVar)  -> return $ Var tacVar typ
		Nothing -> return $ Var "" TypeInt


findFunDef :: Ident -> Context (Maybe FunctionDef)
findFunDef ident = do
	(stringConstants, usedVarNames, funs, tables) <- get
	return $ Map.lookup ident funs




pushEmptySymbolTable :: Context ()
pushEmptySymbolTable = do
	(stringConstants, usedVarNames, funs, tables) <- get
	let newTables = (Map.empty):tables
	put (stringConstants, usedVarNames, funs, newTables)


popSymbolTable :: Context ()
popSymbolTable = do
	(stringConstants, usedVarNames, funs, (table:tables)) <- get
	put (stringConstants, usedVarNames, funs, tables)


addStringConstant :: Ident -> String -> Context ()
addStringConstant ident str = do
	(stringConstants, usedVarNames, funs, tables) <- get

	let newStrings = (ident, str) : stringConstants

	put (newStrings, usedVarNames, funs, tables)
	


getUnusedVarName :: Ident -> Context Ident
getUnusedVarName ident = do
	(stringConstants, usedVarNames, funs, tables) <- get

	let used = Map.lookup ident usedVarNames

	case used of
		Just (name, no) -> do
			let lastId = no + 1
			let newVarNames = Map.insert ident (name, lastId) usedVarNames
			put (stringConstants, newVarNames, funs, tables)
			return $ ident ++ (show lastId)
			
		Nothing -> do
			let lastId = 0
			let newVarNames = Map.insert ident (ident, lastId) usedVarNames
			put (stringConstants, newVarNames, funs, tables)
			return $ ident ++ (show lastId)
	

getNewTempVarName :: Type -> Context Ident
getNewTempVarName typ = do

	case typ of
		TypeInt -> do
			name <- getUnusedVarName "t_i"
			return name
		TypeDouble -> do
			name <- getUnusedVarName "t_d"
			return name
		TypeBoolean -> do
			name <- getUnusedVarName "t_b"
			return name
		TypeString -> do
			name <- getUnusedVarName "t_s"
			return name
			

getNewTempVar :: Type -> Context OpArg
getNewTempVar typ = do
	var <- getNewTempVarName typ
	return $ Var var typ

			
getVarType :: OpArg -> Type
getVarType var =
	case var of
		None -> TypeAny
		Var ident typ -> typ
		ConstVoid -> TypeVoid
		ConstInt i -> TypeInt
		ConstDouble d -> TypeDouble
		ConstBoolean b -> TypeBoolean
		ConstString s -> TypeString
		
getVarName :: OpArg -> Ident
getVarName var =
	case var of
		Var ident typ -> ident
		_ -> ""

-- Program

compileProgram :: Program -> Context String
compileProgram program = do

	funsCode <- compileProgramFunctions program

	let funsCodeString = foldl (\s c -> s ++ "\n" ++ (show c)) "" funsCode

	-- kod funkcji wbudowanych
	builtInFunsCodeString <- getBuiltInFunsCode

	-- zaladowanie deklaracji stalych Stringowych
	(constStringsCode, _, _, _) <- get
	let constStrings = foldl (\str (id,s) -> str ++ "\n" ++ "@" ++ id ++ " = internal constant [" ++ (show ((length s)-2)) ++ " x i8] c\"" ++ s ++ "\"") "" constStringsCode

	return $ constStrings ++ "\n\n" ++
			 funsCodeString ++ "\n\n" ++
		     builtInFunsCodeString

compileProgramFunctions :: Program -> Context Code
compileProgramFunctions (Program funs) = do
	-- dodanie wbudowanych funkcji
	addTreeBuiltInFunsDefs
	
	-- dodanie do srodowiska informacji o funkcjach
	addTreeFunctionsDefs funs

	-- kompilacja funkcji
	compileFunctions funs
	



			
getBuiltInFunsCode :: Context String
getBuiltInFunsCode = do
	return $ unsafePerformIO (readFile "JavaletteStdLibBackend.ll")

addTreeBuiltInFunsDefs :: Context ()
addTreeBuiltInFunsDefs = do
	addFunctionDef $ FunctionDef "printInt" TypeVoid [TypeInt]	
	addFunctionDef $ FunctionDef "printDouble" TypeVoid [TypeDouble]	
	addFunctionDef $ FunctionDef "printString" TypeVoid [TypeString]	
	addFunctionDef $ FunctionDef "error" TypeVoid []	
	addFunctionDef $ FunctionDef "readInt" TypeInt []	
	addFunctionDef $ FunctionDef "readDouble" TypeDouble []	

addTreeFunctionsDefs :: [PosFunction] -> Context ()
addTreeFunctionsDefs posFuns = do
	add posFuns
	return ()
	where
		add :: [PosFunction] -> Context ()
		add ((Pos _ fun):[]) =
			addTreeFunctionDef fun
		add ((Pos _ fun):funs) = do
			addTreeFunctionDef fun
			add funs


addTreeFunctionDef :: Function -> Context ()
addTreeFunctionDef (Function (Pos _ ident) (Pos pos typ) args stms nestedVars nestedFuns) = do
	let argsTypes = map (\((Pos _ _),(Pos _ t)) -> t) args
	addFunctionDef $ FunctionDef ident typ argsTypes


compileFunctions :: [PosFunction] -> Context Code
compileFunctions posFuns = do
	funsCode <- compile posFuns
	return funsCode
	where
		compile (fun:[]) = compileFunction fun
		compile (fun:funs) = do
			funCode <- compileFunction fun
			funsCode <- compile funs
			return $ funCode ++ funsCode


-- translacja kodu LlvmCode do kodu wyjsciowego czytelnego dla czlowieka

showType :: OpArg -> String
showType (ConstVoid) = "void"
showType (ConstInt i) = "i32"
showType (ConstDouble d) = "double"
showType (ConstBoolean b) = "i1"
showType (ConstString str) = "i8*"
showType (Var ident typ) = shortType typ

shortType :: Type -> String
shortType typ =
	case typ of
		TypeVoid -> "void"
		TypeInt -> "i32"
		TypeDouble -> "double"
		TypeBoolean -> "i1"
		TypeString -> "i8*"



showCmp :: Type -> String
showCmp TypeInt = "icmp"
showCmp TypeDouble = "fcmp"
showCmp TypeBoolean = "icmp"

showArithOp :: ArithOp -> Type -> String
showArithOp Add TypeInt = "add"
showArithOp Add TypeDouble = "fadd"
showArithOp Sub TypeInt = "sub"
showArithOp Sub TypeDouble = "fsub"
showArithOp Mul TypeInt = "mul"
showArithOp Mul TypeDouble = "fmul"
showArithOp Div TypeInt = "sdiv"
showArithOp Div TypeDouble = "fdiv"
showArithOp Rem TypeInt = "urem"
showArithOp Rem TypeDouble = "frem"

showArgs :: [OpArg] -> String
showArgs args = 
	if length args == 0
		then ""
		else
				let lsargs = map (\a -> (showType a) ++ " " ++ (show a) ) args
				in foldl (\s el -> s ++ ", " ++ el) (head lsargs) (tail lsargs)

instance Show OpArg where
	show None = ""
	show (Var ident typ) = "%" ++ ident
	show (ConstVoid) = ""
	show (ConstInt i) = show i
	show (ConstDouble d) = show d
	show (ConstBoolean b) = if b then "true" else "false"
	show (ConstString s) = s


instance Show ArithOp where
	show Add = "add"
	show Sub = "sub"
	show Mul = "mul"
	show Div = "div"
	show Rem = "rem"

instance Show RelOp where
	show Lt = "lt"
	show Le = "le"
	show Gt = "gt"
	show Ge = "sge"
	show Eq = "eq"
	show Ne = "ne"

showRelOp :: RelOp -> Type -> String
showRelOp rel typ =
		case (rel, typ) of
			(Lt, TypeInt) -> "slt"
			(Lt, TypeBoolean) -> "slt"
			(Lt, TypeDouble) -> "olt"
			(Le, TypeInt) -> "sle"
			(Le, TypeBoolean) -> "sle"
			(Le, TypeDouble) -> "ole"
			(Gt, TypeInt) -> "sgt"
			(Gt, TypeBoolean) -> "sgt"
			(Gt, TypeDouble) -> "ogt"
			(Ge, TypeInt) -> "sge"
			(Ge, TypeBoolean) -> "sge"
			(Ge, TypeDouble) -> "oge"
			(Eq, TypeInt) -> "eq"
			(Eq, TypeBoolean) -> "eq"
			(Eq, TypeDouble) -> "oeq"
			(Ne, TypeInt) -> "ne"
			(Ne, TypeBoolean) -> "ne"
			(Ne, TypeDouble) -> "one"

instance Show LlvmCode where
	show (LlvmCopy lVar rVar) =
		(show lVar) ++ " = " ++ (show rVar)
	show (LlvmAlloca lVar) =
		(show lVar) ++ " = alloca " ++ (showType lVar)
	show (LlvmLoad reg var) =
		(show reg) ++ " = load " ++ (showType var) ++ "* " ++ (show var)
	show (LlvmStore val var) =
		"store " ++ (showType val) ++ " " ++ (show val) ++ ", " ++ (showType var) ++ "* " ++ (show var)
	show (LlvmBinOp reg arithOp arg1 arg2) =
		(show reg) ++ " = " ++ (showArithOp arithOp (getVarType arg1)) ++ " " ++ (showType arg1) ++ " " ++ (show arg1) ++ ", " ++ (show arg2)
	show (LlvmRelOp reg relOp arg1 arg2) =
		(show reg) ++ " = " ++ (showCmp (getVarType arg1))  ++ " " ++ (showRelOp relOp (getVarType arg1)) ++ " " ++ (showType arg1) ++ " " ++ (show arg1) ++ ", " ++ (show arg2)
	show (LlvmAnd reg arg1 arg2) =
		(show reg) ++ " = and " ++ (showType arg1) ++ " " ++ (show arg1) ++ ", " ++ (show arg2)
	show (LlvmOr reg arg1 arg2) =
		(show reg) ++ " = or " ++ (showType arg1) ++ " " ++ (show arg1) ++ ", " ++ (show arg2)
	show (LlvmBr label) =
		"br label %" ++ label
	show (LlvmBrCond opArg labelTrue labelFalse) =
		"br i1 " ++ (show opArg) ++ ", label %" ++ labelTrue ++ ", label %" ++ labelFalse
	show (LlvmCall reg ident args) =
		let lhs = case reg of
						ConstVoid -> ""
						_ -> (show reg) ++ " = "
		in lhs ++ "call " ++ (showType reg) ++ " @" ++ ident ++ "(" ++ (showArgs args) ++ ")" 
	show (LlvmFunction ident retType args) =
		"define " ++ (shortType retType) ++ " @" ++ ident ++ " (" ++ (showArgs args) ++ ") {"
	show (LlvmEndFunction) =
		"}"
	show (LlvmReturn val) =
		"ret " ++ (showType val) ++ " " ++ (show val)
	show (LlvmStrPtr reg size) =
		(show reg) ++ " = getelementptr [" ++ (show size) ++ " x i8]* @" ++ (getVarName reg) ++ ", i32 0, i32 0"
	show (LlvmLabel label) =
		label ++ ":"
	show (LlvmComment comment) =
		"; " ++ comment
	show (LlvmNewLine) =
		"\n"



labelPos :: (Int,Int) -> String
labelPos (pos_l, pos_k) = (show pos_l) ++ "_" ++ (show pos_k)



-- Function

compileFunction :: PosFunction -> Context Code

compileFunction (Pos pos (Function (Pos _ ident) (Pos _ returnTyp) args stms nestedVars nestedFuns)) = do
	pushEmptySymbolTable

	-- dodanie definicji funkcji
	let defArgs = map (\((Pos _ _),(Pos _ t)) -> t) args
	addFunctionDef $ FunctionDef ident returnTyp defArgs

	-- dodanie miejsca na wartosc zwracana przez funkcje
	llvmReturnVar <- case returnTyp of
						TypeVoid -> return []
						_ -> do
								addVarDef retValueName returnTyp
								retVar <- findLlvmVarByVarName retValueName
								return [LlvmAlloca retVar]
	
	-- dodanie argumentow
	-- zwroci kod rezerwujacy miejsce w pamieci na zmienne
	argsCode <- addArgs args

	-- kompilacja ciala funkcji
	bodyStmtsCode <- compileBody stms

	-- dodaie pierwszego basic block startowego z definicja zmiennej na wartosc zwracana
	-- oraz przejscia do pierwszego bloku
	let enterBlockCode = [LlvmLabel "ENTER"] ++
						 argsCode ++
						 llvmReturnVar ++
						 [LlvmBr "AFTERENTER"]
	-- end block odpowiada za obsluge zwrocenia wartosci
	-- inne bloki musza wartosc zwracana ustawic i przejsc do tego bloku
	-- na zakonczenie wykonywania programu
	endBlockCode <-  case returnTyp of
							TypeVoid -> return $ [LlvmLabel "RETURN"] ++
												 [LlvmReturn ConstVoid]
							_ -> do
									retReg <- getNewTempVar returnTyp
									retVar <- findLlvmVarByVarName retValueName
									return $ [LlvmLabel "RETURN"] ++ 
											 [LlvmLoad retReg retVar] ++ 
											 [LlvmReturn retReg]
	
	-- poniewaz kazdy blok musi konczyc sie instrukcja terminalna
	-- sprawdzmy czy blok calej funkcji konczy sie wlacnie taka
	-- jesli nie to dodamy na koniec skok do bloku RETURN
	let bodyStmtsEndingCode = case last bodyStmtsCode of
									LlvmBr _ -> []
									LlvmBrCond _ _ _ -> []
									_ -> [LlvmBr "RETURN"]

	-- przygotowanie funkcji
	-- ustalenie nazw argumentow
	let argsNames = map (\((Pos _ var),(Pos _ t)) -> Var (hahaVarToIndent var) t) args


	-- pierwszy blok nie moze miec przodkow w CFG
	-- kazdy blok musi konczyc sie terminujaca instrukcja (br lub ret)
	let functionHeader = LlvmFunction ident returnTyp argsNames

	let functionFooter = LlvmEndFunction

	popSymbolTable

	return $ [functionHeader] ++
			 enterBlockCode ++
			 [LlvmLabel "AFTERENTER"] ++
			 bodyStmtsCode ++
			 bodyStmtsEndingCode ++
			 endBlockCode ++
			 [functionFooter]
						


	where
		addArgs :: [(PosVar, PosType)] -> Context Code
		addArgs [] = return []
		addArgs (((Pos _ var),(Pos _ typ)):args) = do
			let ident = hahaVarToIndent var
			addVarDef ident typ
			tacVar <- findLlvmVarByVarName ident
			argsCode <- addArgs args
			return $ [LlvmAlloca tacVar] ++ 
					 [LlvmStore (Var ident typ) tacVar] ++
					 argsCode

		compileBody :: [PosStmt] -> Context Code
		compileBody [] = return []
		compileBody (stmt:stmts) = do
			stmtCode <- compileStmt stmt
			stmtsCode <- compileBody stmts
			return $ stmtCode ++
					 stmtsCode

-- Stmt

compileStmt :: PosStmt -> Context Code

compileStmt (Pos pos (StmtList posStms)) = do

	pushEmptySymbolTable

	stmsCode <- compile posStms

	popSymbolTable

	return stmsCode

	where
		compile [] = return []
		compile (stm:stms) = do
			stmCode <- compileStmt stm
			stmsCode <- compile stms
			return $ stmCode ++ 
					 stmsCode


compileStmt (Pos pos (StmtVarsDecl (Pos _ typ) posDecls)) = do
	declsCode <- addVars posDecls
	return declsCode

	where
		addVars (decl:pDecls) = do
			declCode <- compileDecl typ decl
			declsCode <- addVars pDecls
			return $ declCode ++ 
					 declsCode
		addVars [] = return []


compileStmt (Pos pos (StmtAssig posAssig)) = do
	(assigType, assigCode) <- compileAssig posAssig
	return $ assigCode

compileStmt (Pos pos (StmtIf posExp posStThen posStElse)) = do
	(expVar, expCode) <- compileExp posExp

	pushEmptySymbolTable

	thenCode <- compileStmt posStThen

	popSymbolTable

	let (Pos _ stElse) = posStElse
	if stElse == StmtEmpty
		then do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			popSymbolTable

			return $ expCode ++
					 [LlvmBrCond expVar ("IFTHEN_" ++ labelPos(pos)) ("IFEND_" ++ labelPos(pos))] ++
					 [LlvmLabel ("IFTHEN_" ++ labelPos(pos))] ++
					 thenCode ++
					 [LlvmBr ("IFEND_" ++ labelPos(pos))] ++
					 [LlvmLabel ("IFEND_" ++ labelPos(pos))]
		else do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			popSymbolTable

			return $ expCode ++ 
					 [LlvmBrCond expVar ("IFTHEN_" ++ labelPos(pos)) ("IFELSE_" ++ labelPos(pos))] ++
					 [LlvmLabel ("IFTHEN_" ++ labelPos(pos))] ++
					 thenCode ++
					 [LlvmBr ("IFEND_" ++ labelPos(pos))] ++
					 [LlvmLabel ("IFELSE_" ++ labelPos(pos))] ++
					 elseCode ++
					 [LlvmBr ("IFEND_" ++ labelPos(pos))] ++
					 [LlvmLabel ("IFEND_" ++ labelPos(pos))]
					 
					 


compileStmt (Pos pos (StmtWhile posExp posStmt)) = do
	(expVar, expCode) <- compileExp posExp
	
	pushEmptySymbolTable

	whileCode <- compileStmt posStmt

	popSymbolTable

	return $ [LlvmBr ("WHILE_" ++ labelPos(pos))] ++
			 [LlvmLabel ("WHILE_" ++ labelPos(pos))] ++
			 expCode ++
			 [LlvmBrCond expVar ("WHILEBODY_" ++ labelPos(pos)) ("ENDWHILE_" ++ labelPos(pos))] ++
			 [LlvmLabel ("WHILEBODY_" ++ labelPos(pos))] ++
			 whileCode ++
			 [LlvmBr ("WHILE_" ++ labelPos(pos))] ++
			 [LlvmLabel ("ENDWHILE_" ++ labelPos(pos))]



compileStmt (Pos pos (StmtFor posAssig1 posExp posAssig2 posStmt)) = do
	(assig1Type, assig1Code) <- compileAssig posAssig1
	(expVar, expCode) <- compileExp posExp
	(assig2Type, assig2Code) <- compileAssig posAssig2

	pushEmptySymbolTable
	forCode <- compileStmt posStmt
	popSymbolTable

	return $ assig1Code ++
			 [LlvmBr ("FOR_" ++ labelPos(pos))] ++
			 [LlvmLabel ("FOR_" ++ labelPos(pos))] ++
			 expCode ++
			 [LlvmBrCond expVar ("FORBODY_" ++ labelPos(pos)) ("ENDFOR_" ++ labelPos(pos))] ++
			 [LlvmLabel ("FORBODY_" ++ labelPos(pos))] ++
			 forCode ++
			 assig2Code ++
			 [LlvmBr ("FOR_" ++ labelPos(pos))] ++
			 [LlvmLabel ("ENDFOR_" ++ labelPos(pos))]

compileStmt (Pos pos (StmtReturn maybePosExp)) = do
	case maybePosExp of
		Nothing ->
			return [LlvmBr "RETURN"]
		Just posExp -> do
			(expVar, expCode) <- compileExp posExp
			retVar <- findLlvmVarByVarName retValueName
			return $ expCode ++
					 [LlvmStore expVar retVar] ++
					 [LlvmBr "RETURN"]

compileStmt (Pos pos (StmtExp posExp)) = do
	(typCode, expCode) <- compileExp posExp
	return expCode

compileStmt (Pos pos (StmtEmpty)) =
	return []


-- Decl
compileDecl :: Type -> PosDecl -> Context Code
compileDecl typ (Pos pos (Decl (Pos _ ident) maybeExp)) = do

	case maybeExp of
		Nothing -> do
			addVarDef (hahaVarToIndent ident) typ
			tacVar <- findLlvmVarByVarName (hahaVarToIndent ident)

			return $ [LlvmAlloca tacVar]
					 

		Just posExp -> do
			(expVar, expCode) <- compileExp posExp

			addVarDef (hahaVarToIndent ident) typ
			tacVar <- findLlvmVarByVarName (hahaVarToIndent ident)

			return $ expCode ++
					 [LlvmAlloca tacVar] ++
					 [LlvmStore expVar tacVar]


-- Assig
compileAssig :: PosAssig -> Context (OpArg, Code)

compileAssig (Pos pos (AssigEq (Pos _ var) posExp)) = do
	(expVar, expCode) <- compileExp posExp
	let ident = hahaVarToIndent var

	tacVar <- findLlvmVarByVarName ident

	return $ (tacVar, expCode ++
				      [LlvmStore expVar tacVar])

						
compileAssig (Pos pos (AssigInc (Pos _ var))) = do
	let ident = hahaVarToIndent var

	tacVar <- findLlvmVarByVarName ident
	let varType = getVarType tacVar

	tempRegLoad <- getNewTempVar varType
	tempRegAdd <- getNewTempVar varType

	return $ (tacVar, [LlvmLoad tempRegLoad tacVar] ++
					  [LlvmBinOp tempRegAdd Add tempRegLoad (ConstInt 1)] ++
					  [LlvmStore tempRegAdd tacVar])

compileAssig (Pos pos (AssigDec (Pos _ var))) = do
	let ident = hahaVarToIndent var

	tacVar <- findLlvmVarByVarName ident
	let varType = getVarType tacVar

	tempRegLoad <- getNewTempVar varType
	tempRegSub <- getNewTempVar varType

	return $ (tacVar, [LlvmLoad tempRegLoad tacVar] ++
					  [LlvmBinOp tempRegSub Sub tempRegLoad (ConstInt 1)] ++
					  [LlvmStore tempRegSub tacVar])

-- Exp
compileExp :: PosExp -> Context (OpArg, Code)

compileExp (Pos pos (ExpList exps)) = do
	code <- compile exps

	return (None, code)

		where
			compile :: [PosExp] -> Context Code
			compile [] = return []
			compile (exp:exps) = do
				(expVar, expCode) <- compileExp exp
				expsCode <- compile exps
				return $ expCode ++ 
						 expsCode

compileExp (Pos pos (ExpBinaryOp binOp posExp1 posExp2)) = do
	(exp1Var, exp1Code) <- compileExp posExp1
	(exp2Var, exp2Code) <- compileExp posExp2

	let expType = getVarType exp1Var

	case binOp of
		BoolAnd -> do
				varRet <- getNewTempVar TypeBoolean
				let andVar = Var ("and_" ++ labelPos(pos)) TypeBoolean
				return $ (varRet, 
							exp1Code ++
							[LlvmAlloca andVar] ++
							[LlvmBrCond exp1Var ("ANDLEFTTRUE_" ++ labelPos(pos)) ("ANDFALSE_" ++ labelPos(pos))] ++
							[LlvmLabel ("ANDLEFTTRUE_" ++ labelPos(pos))] ++
							exp2Code ++
							[LlvmBrCond exp2Var ("ANDBOTHTRUE_" ++ labelPos(pos)) ("ANDFALSE_" ++ labelPos(pos))] ++
							[LlvmLabel ("ANDBOTHTRUE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean True) andVar]  ++
							[LlvmBr ("ANDEND_" ++ labelPos(pos))] ++
							[LlvmLabel ("ANDFALSE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean False) andVar]  ++
							[LlvmBr ("ANDEND_" ++ labelPos(pos))] ++
							[LlvmLabel ("ANDEND_" ++ labelPos(pos))] ++
							[LlvmLoad varRet andVar]
							)
		BoolOr -> do
				varRet <- getNewTempVar TypeBoolean
				let orVar = Var ("or_" ++ labelPos(pos)) TypeBoolean
				return $ (varRet, 
							exp1Code ++
							[LlvmAlloca orVar] ++
							[LlvmBrCond exp1Var ("ORTRUE_" ++ labelPos(pos)) ("ORLEFTFALSE_" ++ labelPos(pos))] ++
							[LlvmLabel ("ORLEFTFALSE_" ++ labelPos(pos))] ++
							exp2Code ++
							[LlvmBrCond exp2Var ("ORTRUE_" ++ labelPos(pos)) ("ORBOTHFALSE_" ++ labelPos(pos))] ++
							[LlvmLabel ("ORBOTHFALSE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean False) orVar]  ++
							[LlvmBr ("OREND_" ++ labelPos(pos))] ++
							[LlvmLabel ("ORTRUE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean True) orVar]  ++
							[LlvmBr ("OREND_" ++ labelPos(pos))] ++
							[(LlvmLabel ("OREND_" ++ labelPos(pos)))] ++
							[LlvmLoad varRet orVar]
							)
		ComperEq -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Eq exp1Var exp2Var]
							)
		ComperNotEq -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Ne exp1Var exp2Var]
							)
		RelaLe -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Lt exp1Var exp2Var]
							)
		RelaLeEq -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Le exp1Var exp2Var]
							)
		RelaGt -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Gt exp1Var exp2Var]
							)
		RelaGtEq -> do
				varRet <- getNewTempVar TypeBoolean
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmRelOp varRet Ge exp1Var exp2Var]
							)
		AddiPlus -> do
				varRet <- getNewTempVar expType
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmBinOp varRet Add exp1Var exp2Var ]
							)
		AddiMinus -> do
				varRet <- getNewTempVar expType
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmBinOp varRet Sub exp1Var exp2Var ]
							)
		MultiMulti -> do
				varRet <- getNewTempVar expType
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmBinOp varRet Mul exp1Var exp2Var ]
							)
		MultiDiv -> do
				varRet <- getNewTempVar expType
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmBinOp varRet Div exp1Var exp2Var ]
							)
		MultiMod -> do
				varRet <- getNewTempVar expType
				return $ (varRet, 
							exp1Code ++
							exp2Code ++
							[LlvmBinOp varRet Rem exp1Var exp2Var ]
							)

compileExp (Pos pos (ExpUnaryOp unOp posExp)) = do
	(expVar, expCode) <- compileExp posExp

	case unOp of
		UnaryNot -> do
				varRet <- getNewTempVar TypeBoolean
				let notVar = Var ("not_" ++ labelPos(pos)) TypeBoolean
				return $ (varRet,
							expCode ++
							[LlvmAlloca notVar] ++
							[LlvmBrCond expVar ("NOTTRUE_" ++ labelPos(pos)) ("NOTFALSE_" ++ labelPos(pos))] ++
							[LlvmLabel ("NOTTRUE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean False) notVar]  ++
							[LlvmBr ("NOTEND_" ++ labelPos(pos))] ++
							[LlvmLabel ("NOTFALSE_" ++ labelPos(pos))] ++
							[LlvmStore (ConstBoolean True) notVar]  ++
							[LlvmBr ("NOTEND_" ++ labelPos(pos))] ++
							[LlvmLabel ("NOTEND_" ++ labelPos(pos))] ++
							[LlvmLoad varRet notVar]
							)
		UnaryPlus -> 
				return (expVar, expCode) 
		UnaryMinus -> do
				varRet <- getNewTempVar (getVarType expVar)
				let constZero = case (getVarType expVar) of
									TypeInt -> (ConstInt 0)
									TypeDouble -> (ConstDouble 0.0)

				return $ (varRet,
								expCode ++
								[LlvmBinOp varRet Sub constZero expVar]
								)


compileExp (Pos pos (ExpCallFunc (Pos _ funName) exps)) = do
	foundFun <- findFunDef funName

	compExps <- compile exps

	let expsVarsCode = concat $ map (\(v,c) -> c) compExps
	let argsVars = map (\(v,c) -> v) compExps

	let noArgs = length exps

	case foundFun of
		Just (FunctionDef _ retTyp argsTyp) -> do
			 -- trzeba inaczej obsluzyc printString 
			 -- poniewaz jako parametr ma String i to inaczej sie obsuguje w LLVM
			if funName == "printString"
				then do
					varStr <- getNewTempVar TypeString
					let arg = (head argsVars)
					let strWithEnding = case arg of
											ConstString str -> str ++ "\\00"
											_ -> "error"
					addStringConstant (getVarName varStr) strWithEnding
					return $ (None, [LlvmStrPtr varStr ((length strWithEnding) - 2)] ++  -- trzeba wziac poprawke na wielkosc stringu
								    [LlvmCall ConstVoid funName [Var (getVarName varStr) TypeString]])
				else do
					case retTyp of
						TypeVoid -> return $ (None, expsVarsCode ++
														[LlvmCall ConstVoid funName argsVars])
						_ -> do
										varRet <- getNewTempVar retTyp
										return $ (varRet, expsVarsCode ++
												  [LlvmCall varRet funName argsVars])
		Nothing -> return (ConstString "*** brak funkcji ***", [LlvmComment ("; blad nie zaleziono funkcji " ++ funName)])

	where
		compile :: [PosExp] -> Context [(OpArg, Code)]
		compile [] = return []
		compile (exp:exps) = do
			compExp <- compileExp exp
			compExps <- compile exps
			return $ compExp : compExps

		
compileExp (Pos pos (ExpVar (Pos _ var))) = do
	let ident = hahaVarToIndent var

	tacVar <- findLlvmVarByVarName ident
	let tacType = getVarType tacVar

	varTemp <- getNewTempVar tacType

	return (varTemp, [LlvmLoad varTemp tacVar])


compileExp (Pos pos (ExpExp posExp)) = do
	(expVar, expCode) <- compileExp posExp
	return (expVar, expCode)


compileExp (Pos pos (ExpAssig assig)) =
	compileAssig assig
				
compileExp (Pos pos (ExpInt i)) = do
	return (ConstInt i, [])

compileExp (Pos pos (ExpDouble d)) = do
	return (ConstDouble d, [])

compileExp (Pos pos (ExpString s)) = do
	return (ConstString s, [])

compileExp (Pos pos (ExpTrue)) = do
	return (ConstBoolean True, [])

compileExp (Pos pos (ExpFalse)) = do
	return (ConstBoolean False, [])
