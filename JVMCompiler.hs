module JVMCompiler where

import Prelude
import Control.Monad
import Control.Monad.State
import qualified Data.Map as Map
import System.IO
import System.IO.Unsafe
import Control.Parallel.Strategies (rnf)

import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BSC8

import JavaletteLexer
import JavaletteParser


-- typy zastosowane w programie

data VarDef = VarDef Ident Type Int
			deriving (Show, Eq)

data FunctionDef = FunctionDef Ident Type [Type]
				deriving (Show, Eq)

type VarDefTable = Map.Map Ident VarDef

type FunctionDefTable = Map.Map Ident FunctionDef

type Position = (Int, Int)


type ProgName = String

type CompilerState = ( ProgName, Int, FunctionDefTable, [VarDefTable] )

type Context a = State CompilerState a


data JvmArithOp = Add | Sub | Mul | Div | Rem
			 deriving (Show, Eq)

data JvmComp = Lt | Le | Gt | Ge | Eq | Ne
			 deriving (Show, Eq)

data JvmCode = JvmStore Int Type
			 | JvmLoad Int Type
			 | JvmPop Type
			 | JvmDup Type
			 | JvmGoto String
			 | JvmLabel String
			 | JvmConstInt Int
			 | JvmConstDouble Double
			 | JvmConstBoolean Bool
			 | JvmConstString String
			 | JvmReturn Type
			 | JvmArithOp JvmArithOp Type
			 | JvmIf Bool Type String
			 | JvmComp JvmComp Type String
			 | JvmCall String Type [Type]
			 | JvmCastBooleanToInt
			 | JvmCastIntToBoolean
			 | JvmCastDoubleToInt
			 | JvmCastIntToDouble
			 | JvmComment String
			 | JvmNewLine
			 deriving (Show, Eq)

type Code = [JvmCode]

-- funkcje dodatkowe

inList :: Eq a => a -> [a] -> Bool
inList e (el:els) =
	if e == el
		then True
		else
			inList e els
inList e [] = False


-- funkcje pomocnicze

addVarDef :: Ident -> Type -> Context ()
addVarDef ident typ = do
	(progName, nextId, funs, (table:tables)) <- get

	let newTable = Map.insert ident (VarDef ident typ nextId) table

	case typ of
		TypeDouble -> 
			put(progName, (nextId+2), funs, (newTable:tables))
		_ -> 
			put(progName, (nextId+1), funs, (newTable:tables))

addFunctionDef :: FunctionDef -> Context ()
addFunctionDef (FunctionDef ident typ args)  = do
	(progName, nextId, funs, tables) <- get

	let newFuns = Map.insert ident (FunctionDef ident typ args) funs

	put (progName, nextId, newFuns, tables)


findVarDef :: Ident -> Context (Maybe VarDef)
findVarDef ident = do
	(progName, nextId, funs, tables) <- get
	return $ findInTables ident tables
	where
		findInTables ident (table:tables) =
			case Map.lookup ident table of
				Nothing -> findInTables ident tables
				Just var -> Just var
		findInTables ident [] = Nothing

findFunDef :: Ident -> Context (Maybe FunctionDef)
findFunDef ident = do
	(progName, nextId, funs, tables) <- get
	return $ Map.lookup ident funs




pushEmptySymbolTable :: Context ()
pushEmptySymbolTable = do
	(progName, nextId, funs, tables) <- get
	let newTables = (Map.empty):tables
	put (progName, nextId, funs, newTables)


popSymbolTable :: Context ()
popSymbolTable = do
	(progName, nextId, funs, (table:tables)) <- get
	put (progName, nextId, funs, tables)

-- Program

compileProgram :: ProgName -> Program -> Context String
compileProgram progName (Program funs) = do
	-- dodanie do srodowiska informacji o funkcjach
	addTreeBuiltInFunsDefs
	addTreeFunctionsDefs funs

	-- kompilacja funkcji
	funsCode <- compileFunctions funs

	let programClassInfo = ".class public " ++ progName ++ "\n" ++
							".super java/lang/Object"

	let initializerCode = getProgramIninializerCode
	let jvmMainMethodCode = jvmMainMethod progName
	builtInFunsCode <- getBuiltInFunsCode

	return $ programClassInfo ++ "\n\n" ++
			 initializerCode ++ "\n\n" ++
			 jvmMainMethodCode ++ "\n\n" ++
			 funsCode ++ "\n\n" ++
			 builtInFunsCode

getProgramIninializerCode :: String
getProgramIninializerCode =
	".method public <init>()V \n\
	 \   aload_0 \n\
	 \   invokenonvirtual java/lang/Object/<init>()V \n\
	 \   return \n\
	 \.end method \n"

jvmMainMethod :: ProgName -> String
jvmMainMethod progName =
	".method public static main([Ljava/lang/String;)V" ++ "\n\n" ++
	 "   invokestatic " ++ progName ++ "/main()I" ++ "\n\n" ++
	 "   return \n\
	 \.end method \n"
	

getFileContent :: String -> IO(String)
getFileContent fileName = do
	file <- openFile fileName ReadMode
	content <- hGetContents file
	-- import Control.Parallel.Strategies (rnf)
	-- rnf content `seq` hClose content -- force the whole file to be read, then close
	rnf content `seq` hClose file -- force the whole file to be read, then close
	-- rnf means "reduce to normal form"
	--putStr content
	--putStr "!!!!!!"
	--hClose file
	return content

getBuiltInFunsCode :: Context String
getBuiltInFunsCode = do
	--return "; built in functions"
	return $ unsafePerformIO (getFileContent "JavaletteStdLibBackend.j")


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
addTreeFunctionDef (Function (Pos _ ident) (Pos pos typ) args stms) = do
	let argsTypes = map (\((Pos _ _),(Pos _ t)) -> t) args
	addFunctionDef $ FunctionDef ident typ argsTypes


compileFunctions :: [PosFunction] -> Context String
compileFunctions posFuns = do
	funsCode <- compile posFuns
	return funsCode
	where
		compile (fun:[]) = compileFunction fun
		compile (fun:funs) = do
			funCode <- compileFunction fun
			funsCode <- compile funs
			return $ funCode ++ funsCode

-- funkcje pomocnicze do JVM

codeJvmStore :: Ident -> Context (Type, [JvmCode])
codeJvmStore ident = do
	foundVar <- findVarDef ident
	case foundVar of
			Just (VarDef ident typ nr) -> return $ (typ, [JvmStore nr typ])
			Nothing -> return $ (TypeInt, [JvmComment ("; *** error: Nie ma zmiennej " ++ ident)])

codeJvmLoad :: Ident -> Context (Type, [JvmCode])
codeJvmLoad ident = do
	foundVar <- findVarDef ident
	case foundVar of
			Just (VarDef ident typ nr) -> return $ (typ, [JvmLoad nr typ])
			Nothing -> return $ (TypeInt, [JvmComment ("; *** error: Nie ma zmiennej " ++ ident)])

jvmMethodShortType :: Type -> String
jvmMethodShortType typ =
	case typ of
		TypeBoolean -> "I" -- Boolean na byteach
		TypeVoid -> "V"
		TypeDouble -> "D"
		TypeInt -> "I"
		TypeString -> "Ljava/lang/String;"

jvmReturnType :: Type -> String
jvmReturnType typ =
	case typ of
		TypeBoolean -> "ireturn" -- Boolean na byteach
		TypeVoid -> "return"
		TypeDouble -> "dreturn"
		TypeInt -> "ireturn"

-- translacja kodu JvmCode do kodu wlasciowego JVM

jvmCodeToJvmString :: JvmCode -> String

jvmCodeToJvmString (JvmStore nr typ) = do
	case typ of
		TypeBoolean -> "istore " ++ (show nr)
		TypeVoid -> "; blad"
		TypeDouble -> "dstore " ++ (show nr)
		TypeInt -> "istore " ++ (show nr)

jvmCodeToJvmString (JvmLoad nr typ) = do
	case typ of
		TypeBoolean -> "iload " ++ (show nr)
		TypeVoid -> "; blad"
		TypeDouble -> "dload " ++ (show nr)
		TypeInt -> "iload " ++ (show nr)

jvmCodeToJvmString (JvmPop typ) = do
	case typ of
		TypeBoolean -> "pop"
		TypeVoid -> "; blad"
		TypeDouble -> "pop2"
		TypeInt -> "pop"

jvmCodeToJvmString (JvmDup typ) = do
	case typ of
		TypeBoolean -> "dup"
		TypeVoid -> "; blad"
		TypeDouble -> "dup2"
		TypeInt -> "dup"

jvmCodeToJvmString (JvmGoto label) = do
	"goto " ++ label


jvmCodeToJvmString (JvmLabel label) = do
	label ++ ":"


jvmCodeToJvmString (JvmConstInt i) =
	"ldc " ++ (show i)

jvmCodeToJvmString (JvmConstDouble d) =
	"ldc2_w " ++ (show d)

jvmCodeToJvmString (JvmConstBoolean b) =
	case b of
		True -> "ldc " ++ (show 1)
		False -> "ldc " ++ (show 0)

jvmCodeToJvmString (JvmConstString s) =
	"ldc " ++ (show s)

jvmCodeToJvmString (JvmReturn typ) =
	case typ of
		TypeBoolean -> "ireturn"
		TypeVoid -> "return"
		TypeDouble -> "dreturn"
		TypeInt -> "ireturn"

jvmCodeToJvmString (JvmArithOp Add typ) =
	case typ of
		TypeBoolean -> "iadd"
		TypeVoid -> "; blad"
		TypeDouble -> "dadd"
		TypeInt -> "iadd"

jvmCodeToJvmString (JvmArithOp Sub typ) =
	case typ of
		TypeBoolean -> "isub"
		TypeVoid -> "; blad"
		TypeDouble -> "dsub"
		TypeInt -> "isub"

jvmCodeToJvmString (JvmArithOp Mul typ) =
	case typ of
		TypeBoolean -> "imul"
		TypeVoid -> "; blad"
		TypeDouble -> "dmul"
		TypeInt -> "imul"

jvmCodeToJvmString (JvmArithOp Div typ) =
	case typ of
		TypeBoolean -> "idiv"
		TypeVoid -> "; blad"
		TypeDouble -> "ddiv"
		TypeInt -> "idiv"

jvmCodeToJvmString (JvmArithOp Rem typ) =
	case typ of
		TypeBoolean -> "irem"
		TypeVoid -> "; blad"
		TypeDouble -> "drem"
		TypeInt -> "irem"



jvmCodeToJvmString (JvmIf eq typ label) =
	case eq of
		True -> "ifne " ++ label
		False -> "ifeq " ++ label


jvmCodeToJvmString (JvmComp Eq typ label) =
	case typ of
		TypeBoolean -> "if_icmpeq " ++ label
		TypeInt -> "if_icmpeq " ++ label
		TypeDouble -> "dcmpg ; double \nifeq " ++ label

jvmCodeToJvmString (JvmComp Ne typ label) =
	case typ of
		TypeBoolean -> "if_icmpne " ++ label
		TypeInt -> "if_icmpne " ++ label
		TypeDouble -> "dcmpg ; double \nifne " ++ label

jvmCodeToJvmString (JvmComp Ge typ label) =
	case typ of
		TypeInt -> "if_icmpge " ++ label
		TypeDouble -> "dcmpg ; double \n" ++
					  "ldc 0 \n" ++
					  "if_icmpge " ++ label

jvmCodeToJvmString (JvmComp Gt typ label) =
	case typ of
		TypeInt -> "if_icmpgt " ++ label
		TypeDouble -> "dcmpg ; double \n" ++
					  "ldc 0 \n" ++
					  "if_icmpgt " ++ label

jvmCodeToJvmString (JvmComp Le typ label) =
	case typ of
		TypeInt -> "if_icmple " ++ label
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmple " ++ label

jvmCodeToJvmString (JvmComp Lt typ label) =
	case typ of
		TypeInt -> "if_icmplt " ++ label
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmplt " ++ label

jvmCodeToJvmString (JvmCall funName retType argsTypes) =
	let argsTypesCode = foldl (\s t -> s ++ t) "" (map (\arg -> jvmMethodShortType arg) argsTypes)
	    retTypeCode = jvmMethodShortType retType

	in "invokestatic " ++ funName ++ "(" ++ argsTypesCode ++ ")" ++ retTypeCode



jvmCodeToJvmString (JvmCastBooleanToInt) =
	""

jvmCodeToJvmString (JvmCastIntToBoolean) =
	""

jvmCodeToJvmString (JvmCastDoubleToInt) =
	"d2i"

jvmCodeToJvmString (JvmCastIntToDouble) =
	"i2d"


jvmCodeToJvmString (JvmComment comment) =
	"; *** comment: " ++ comment

jvmCodeToJvmString (JvmNewLine) =
	"\n"


-- Function

compileFunction :: PosFunction -> Context String

compileFunction (Pos pos (Function (Pos _ ident) (Pos _ returnTyp) args stms)) = do
	pushEmptySymbolTable

	-- wyzerowanie licznika numerow zmiennych
	(progName, nextId, funs, tables) <- get
	put (progName, 0, funs, tables)

	-- dodanie definicji funkcji
	let defArgs = map (\((Pos _ _),(Pos _ t)) -> t) args
	addFunctionDef $ FunctionDef ident returnTyp defArgs
	
	-- dodanie argumentow
	-- nie powoduje dodania nowych funkcji :(
	addArgs args

	-- kompilacja ciala funkcji
	bodyStmtsCode <- compileBody stms

	let bodyStmtsCodeString = foldl (\s t -> s ++ "\n" ++ t) "" 
								(map (\code -> jvmCodeToJvmString code) bodyStmtsCode)
	
	popSymbolTable

	-- przygotowanie funkcji
	-- ustalenie typow argumentow
	let argsTypesCode = foldl (\s t -> s ++ t) "" (map (\arg -> jvmMethodShortType arg) defArgs)
	let returnTypeCode = jvmMethodShortType returnTyp

	(_, varCount, _, _) <- get
	let limitLocalsCode = "    .limit locals " ++ (show varCount)
	let limitStackCode = "    .limit stack " ++ (show (calcStackSize bodyStmtsCode))

	let methodHeaderCode = ".method public static " ++ ident ++ 
							"(" ++ argsTypesCode ++ ")" ++ returnTypeCode

	let methodFooterCode = "return" ++ "\n" ++ -- hack, poniewaz zawsze musi byc return z funkcji, a robie w if skok w miejsce gdzie nie ma return
						   ".end method \n"

	return $ methodHeaderCode ++ "\n\n" ++ 
			 limitLocalsCode ++ "\n" ++ 
			 limitStackCode ++ "\n\n" ++
			 bodyStmtsCodeString ++ "\n\n" ++ 
			 methodFooterCode
						


	where
		addArgs :: [(PosIdent, PosType)] -> Context ()
		addArgs [] = return ()
		addArgs (((Pos _ ident),(Pos _ typ)):args) = do
			addVarDef ident typ
			addArgs args
			return ()

		compileBody :: [PosStmt] -> Context Code
		compileBody [] = return []
		compileBody (stmt:stmts) = do
			stmtCode <- compileStmt stmt
			stmtsCode <- compileBody stmts
			return $ stmtCode ++
					 stmtsCode

typeSize :: Type -> Int
typeSize typ =
	case typ of
		TypeInt -> 1
		TypeBoolean -> 1
		TypeString -> 1
		TypeDouble -> 2
		TypeVoid -> 0
	

codeSize :: JvmCode -> Int
codeSize code = 
	case code of
		 JvmStore i typ -> - typeSize typ
		 JvmLoad i typ -> typeSize typ
		 JvmPop typ -> - typeSize typ
		 JvmDup typ -> typeSize typ
		 JvmGoto label -> 0
		 JvmLabel label -> 0
		 JvmConstInt i -> 1
		 JvmConstDouble d -> 2
		 JvmConstBoolean b -> 1
		 JvmConstString str -> 1
		 JvmReturn typ -> - typeSize typ
		 JvmArithOp op typ -> - typeSize typ
		 JvmIf b typ label -> - typeSize typ
		 JvmComp cmp typ label -> - 2 * (typeSize typ) + (typeSize TypeInt)
		 JvmCall funName retType argsType ->
					- (sum (map (typeSize) argsType)) + (typeSize retType)
		 JvmCastBooleanToInt -> 0
		 JvmCastIntToBoolean -> 0
		 JvmCastDoubleToInt -> -1
		 JvmCastIntToDouble -> 1
		 JvmComment str -> 0
		 JvmNewLine -> 0
	
calcStackSize :: Code -> Int
calcStackSize sourceCode =
	let labels = getLabels sourceCode 0

	in calc sourceCode 0 [] labels
		where
			getLabels [] line = Map.empty
			getLabels (code:codes) line =
				case code of
					JvmLabel label -> Map.insert label line (getLabels codes (line+1))
					_ -> getLabels codes (line+1)	
			
			calc :: Code -> Int -> [String] -> (Map.Map String Int) -> Int
			calc [] stackMax visited labels = 0
			calc (code:codes) currStack visited labels =
				case code of
					JvmGoto label -> if elem label visited 
										then max currStack (calc codes currStack visited labels)
									    else
											case Map.lookup label labels of
												Nothing -> max currStack (calc codes currStack visited labels)
												Just line -> maximum [currStack,
																	  calc codes currStack (label:visited) labels,
																	  calc (drop (line+1) sourceCode) currStack (label:visited) labels]
					_ -> let newCurrStack = currStack + (codeSize code)
						 in max currStack (calc codes newCurrStack visited labels)

countOccur :: BSC8.ByteString -> BSC8.ByteString -> Int
countOccur p s = 
	let (b,foc) = BS.breakSubstring p s
	in if BSC8.null foc then 0
				   else 1 + (countOccur p (BSC8.drop (BSC8.length p) foc))

-- Stmt

compileStmt :: PosStmt -> Context (Code)

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
	declsCode <- addVar posDecls
	return declsCode

	where
		addVar (decl:pDecls) = do
			declCode <- compileDecl typ decl
			declsCode <- addVar pDecls
			return $ declCode ++ 
					 declsCode
		addVar [] = return []


compileStmt (Pos pos (StmtAssig posAssig)) = do
	assigCode <- compileAssig posAssig
	return assigCode

compileStmt (Pos (pos_l,pos_k) (StmtIf posExp posStThen posStElse)) = do
	(expTyp, expCode) <- compileExp posExp

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
					 [JvmIf False expTyp ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 thenCode ++
					 [JvmLabel ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
		else do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			popSymbolTable

			return $ expCode ++ 
					 [JvmIf False expTyp ("IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 thenCode ++
					 [JvmGoto ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 [JvmLabel ("IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 elseCode ++
					 [JvmLabel ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
					 
					 


compileStmt (Pos (pos_l,pos_k) (StmtWhile posExp posStmt)) = do
	(expTyp, expCode) <- compileExp posExp
	
	pushEmptySymbolTable

	whileCode <- compileStmt posStmt

	popSymbolTable

	return $ [JvmLabel ("WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 expCode ++
			 [JvmIf False expTyp ("ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 whileCode ++
			 [JvmGoto ("WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 [JvmLabel ("ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))]



compileStmt (Pos (pos_l,pos_k) (StmtFor posAssig1 posExp posAssig2 posStmt)) = do
	assig1Code <- compileAssig posAssig1
	(expTyp, expCode) <- compileExp posExp
	assig2Code <- compileAssig posAssig2

	pushEmptySymbolTable
	forCode <- compileStmt posStmt
	popSymbolTable

	return $ assig1Code ++
			 [JvmLabel ("FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 expCode ++
			 [JvmIf False expTyp ("ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 forCode ++
			 assig2Code ++
			 [JvmGoto ("FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 [JvmLabel ("ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))]

compileStmt (Pos pos (StmtReturn maybePosExp)) = do
	case maybePosExp of
		Nothing ->
			return $ [JvmReturn TypeVoid]
		Just posExp -> do
			(typCode, expCode) <- compileExp posExp
			return $ expCode ++
					 [JvmReturn typCode]

compileStmt (Pos pos (StmtExp posExp)) = do
	(typCode, expCode) <- compileExp posExp
	return expCode

compileStmt (Pos pos (StmtEmpty)) = do
	return []


-- Decl
compileDecl :: Type -> PosDecl -> Context Code
compileDecl typ (Pos pos (Decl (Pos _ ident) maybeExp)) = do
	case maybeExp of
		Nothing -> do
			addVarDef ident typ
			return []

		Just posExp -> do
			(expTyp, expCode) <- compileExp posExp

			addVarDef ident typ

			(storeTyp, storeCode) <- codeJvmStore ident

			return $ expCode ++ 
					 storeCode


-- Assig
compileAssig :: PosAssig -> Context (Code)

compileAssig (Pos pos (AssigEq (Pos posA ident) posExp)) = do
	(expTyp, expCode) <- compileExp posExp

	(storeTyp, storeCode) <- codeJvmStore ident

	return $ expCode ++ 
			 storeCode
						
compileAssig (Pos pos (AssigInc (Pos _ ident))) = do
	(loadTyp, loadCode) <- codeJvmLoad ident
	(storeTyp, storeCode) <- codeJvmStore ident
	return $ loadCode ++
			 [JvmConstInt 1] ++
			 [JvmArithOp Add TypeInt] ++
			 storeCode

compileAssig (Pos pos (AssigDec (Pos _ ident))) = do
	(loadTyp, loadCode) <- codeJvmLoad ident
	(storeTyp, storeCode) <- codeJvmStore ident
	return $ loadCode ++
			 [JvmConstInt 1] ++
			 [JvmArithOp Sub TypeInt] ++
			 storeCode

-- Exp
compileExp :: PosExp -> Context (Type, Code)

compileExp (Pos pos (ExpList exps)) = do
	code <- compile exps

	return (TypeInt, code)

		where
			compile [] = return []
			compile (exp:exps) = do
				(expTyp, expCode) <- compileExp exp
				expsCode <- compile exps
				return $ expCode ++ 
						 expsCode

compileExp (Pos (pos_l,pos_k) (ExpBinaryOp binOp posExp1 posExp2)) = do
	(exp1Typ, exp1Code) <- compileExp posExp1
	(exp2Typ, exp2Code) <- compileExp posExp2

	case binOp of
		BoolAnd -> return $ (TypeBoolean, 
							exp1Code ++
							[JvmIf False exp1Typ ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							exp2Code ++
							[JvmIf False exp2Typ ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True]  ++
							[JvmGoto ("ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmLabel ("ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		BoolOr -> return $ (TypeBoolean, 
							exp1Code ++
							[JvmIf True exp1Typ ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							exp2Code ++
							[JvmIf True exp2Typ ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[(JvmLabel ("OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k)))]
							)
		ComperEq -> return $ (TypeBoolean, 
							exp1Code ++
							exp2Code ++
							[JvmComp Eq exp1Typ ("EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		ComperNotEq -> return $ (TypeBoolean, 
							exp1Code ++
							exp2Code ++
							[JvmComp Ne exp1Typ ("EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaLe -> return $ (TypeBoolean,
							exp1Code ++
							exp2Code ++
							[JvmComp Lt exp1Typ (" LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaLeEq -> return $ (TypeBoolean, 
							exp1Code ++
							exp2Code ++
							[JvmComp Le exp1Typ ("LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaGt -> return $ (TypeBoolean,
							exp1Code ++
							exp2Code ++
							[JvmComp Gt exp1Typ ("GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaGtEq -> return $ (TypeBoolean, 
							exp1Code ++
							exp2Code ++
							[JvmComp Ge exp1Typ ("GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmGoto ("GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmLabel ("GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		AddiPlus -> return $ (exp1Typ, 
							exp1Code ++
							exp2Code ++
							[JvmArithOp Add exp1Typ]
							)
		AddiMinus -> return $ (exp1Typ, 
							exp1Code ++
							exp2Code ++
							[JvmArithOp Sub exp1Typ]
							)
		MultiMulti -> return $ (exp1Typ, 
							exp1Code ++
							exp2Code ++
							[JvmArithOp Mul exp1Typ]
							)
		MultiDiv -> return $ (exp1Typ, 
							exp1Code ++
							exp2Code ++
							[JvmArithOp Div exp1Typ]
							)
		MultiMod -> return $ (exp1Typ, 
							exp1Code ++
							exp2Code ++
							[JvmArithOp Rem exp1Typ]
							)

compileExp (Pos (pos_l,pos_k) (ExpUnaryOp unOp posExp)) = do
	(typ, code) <- compileExp posExp

	case unOp of
		UnaryNot -> return $ (TypeBoolean,
							code ++
							[JvmIf True typ ("NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean True] ++
							[JvmGoto ("NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmLabel ("NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[JvmConstBoolean False] ++
							[JvmLabel ("NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		UnaryPlus -> return $ (typ,
							code ++
							[JvmArithOp Add typ]
							)
		UnaryMinus -> do
						case typ of
							TypeInt ->
								return $ (typ,
									code ++
									[JvmConstInt (-1)] ++
									[JvmArithOp Mul typ]
									)
							TypeDouble ->
								return $ (typ,
									code ++
									[JvmConstDouble (-1.0)] ++
									[JvmArithOp Mul typ]
									)


compileExp (Pos pos (ExpCallFunc (Pos _ funName) exps)) = do
	(progName, _, _, _) <- get
	foundFun <- findFunDef funName

	(expsTyp, expsCode) <- compileExp (Pos pos (ExpList exps))

	case foundFun of
		Just (FunctionDef _ retTyp argsTyp) -> do
				let argsTypesCode = foldl (\s t -> s ++ t) "" (map (\arg -> jvmMethodShortType arg) argsTyp)
				let returnTypeCode = jvmMethodShortType retTyp
				return $ (retTyp, 
						 expsCode ++
						 [JvmCall (progName ++ "/" ++ funName) retTyp argsTyp])
		Nothing -> return (TypeAny, [JvmComment ("; blad nie zaleziono funkcji " ++ funName)])

		
compileExp (Pos pos (ExpVar (Pos _ ident))) = do
	codeJvmLoad ident

compileExp (Pos pos (ExpExp posExp)) = do
	(expTyp, expCode) <- compileExp posExp
	return (expTyp, expCode)

compileExp (Pos pos (ExpCast castType posExp)) = do
	(expType, expCode) <- compileExp posExp

	case (expType, castType) of
		(TypeInt, ToInt) -> return (TypeInt, 
									expCode)
		(TypeInt, ToDouble) -> return (TypeDouble, 
										expCode ++
										[JvmCastIntToDouble])
		(TypeInt, ToBoolean) -> return (TypeBoolean,
										expCode ++
										[JvmCastIntToBoolean])
		(TypeBoolean, ToInt) -> return (TypeInt, 
										expCode ++
										[JvmCastBooleanToInt])
		(TypeBoolean, ToBoolean) -> return (TypeBoolean, 
											expCode
											)
		(TypeDouble, ToInt) -> return (TypeInt, 
										expCode ++
										[JvmCastDoubleToInt])
		(TypeDouble, ToDouble) -> return (TypeDouble, 
											expCode
											)
				
compileExp (Pos pos (ExpInt i)) = do
	return (TypeInt, [JvmConstInt i])

compileExp (Pos pos (ExpDouble d)) = do
	return (TypeDouble, [JvmConstDouble d])

compileExp (Pos pos (ExpString s)) = do
	return (TypeString, [JvmConstString s])

compileExp (Pos pos (ExpTrue)) = do
	return (TypeBoolean, [JvmConstBoolean True])

compileExp (Pos pos (ExpFalse)) = do
	return (TypeBoolean, [JvmConstBoolean False])
