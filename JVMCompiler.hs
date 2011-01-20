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

type Code = String

type ProgName = String

type CompilerState = ( ProgName, Int, FunctionDefTable, [VarDefTable] )


type Context a = State CompilerState a

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

compileProgram :: ProgName -> Program -> Context (Code)
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

	return $ programClassInfo ++ "\n\n\n" ++ 
				initializerCode ++ "\n\n\n" ++ 
				jvmMainMethodCode ++ "\n\n\n" ++ 
				funsCode ++ "\n\n\n" ++ 
				builtInFunsCode

getProgramIninializerCode :: Code
getProgramIninializerCode =
	".method public <init>()V \n\
	 \   aload_0 \n\
	 \   invokenonvirtual java/lang/Object/<init>()V \n\
	 \   return \n\
	 \.end method \n"

jvmMainMethod :: ProgName -> Code
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

getBuiltInFunsCode :: Context Code
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


compileFunctions :: [PosFunction] -> Context (Code)
compileFunctions posFuns = do
	funsCode <- compile posFuns
	return (funsCode)
	where
		compile (fun:[]) =
			compileFunction fun
		compile (fun:funs) = do
			funCode <- compileFunction fun
			funsCode <- compile funs
			return $ funCode ++ funsCode

-- funkcje pomocnicze do JVM

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

jvmStore :: Ident -> Context String
jvmStore ident = do
	foundVar <- findVarDef ident
	case foundVar of
		Just (VarDef ident typ nr) ->
			case typ of
				TypeBoolean -> return $ "istore " ++ (show nr) -- Boolean na byteach
				TypeVoid -> return $ "; blad"
				TypeDouble -> return $ "dstore " ++ (show nr)
				TypeInt -> return $ "istore " ++ (show nr)
		Nothing ->
			return $ "; nie ma zmiennej o nazwie do wczytania " ++ ident

jvmLoad :: Ident -> Context String
jvmLoad ident = do
	foundVar <- findVarDef ident
	case foundVar of
		Just (VarDef ident typ nr) ->
			case typ of
				TypeBoolean -> return $ "iload " ++ (show nr)-- Boolean na byteach
				TypeVoid -> return $ "; blad"
				TypeDouble -> return $ "dload " ++ (show nr)
				TypeInt -> return $ "iload " ++ (show nr)
		Nothing ->
			return $ "; nie ma zmiennej o nazwie " ++ ident

jvmConst :: Exp -> String
jvmConst exp =
	case exp of
		(ExpInt i) -> "ldc " ++ (show i)
		(ExpDouble d) -> "ldc2_w " ++ (show d)
		(ExpString s) -> "ldc " ++ (show s)
		ExpTrue -> "ldc " ++ (show 1)
		ExpFalse -> "ldc " ++ (show 0)

jvmAdd :: Type -> String
jvmAdd typ =
	case typ of
		TypeBoolean -> "iadd"
		TypeVoid -> "; blad"
		TypeDouble -> "dadd"
		TypeInt -> "iadd"

jvmSub :: Type -> String
jvmSub typ =
	case typ of
		TypeBoolean -> "isub"
		TypeVoid -> "; blad"
		TypeDouble -> "dsub"
		TypeInt -> "isub"

jvmMul :: Type -> String
jvmMul typ =
	case typ of
		TypeBoolean -> "imul"
		TypeVoid -> "; blad"
		TypeDouble -> "dmul"
		TypeInt -> "imul"

jvmDiv :: Type -> String
jvmDiv typ =
	case typ of
		TypeBoolean -> "idiv"
		TypeVoid -> "; blad"
		TypeDouble -> "ddiv"
		TypeInt -> "idiv"

jvmRem :: Type -> String
jvmRem typ =
	case typ of
		TypeBoolean -> "irem"
		TypeVoid -> "; blad"
		TypeDouble -> "drem"
		TypeInt -> "irem"

jvmTrue :: String
jvmTrue = jvmConst ExpTrue

jvmFalse :: String
jvmFalse = jvmConst ExpFalse

jvmNeg :: String
jvmNeg = "ineg"

jvmGoto :: String
jvmGoto = "goto"

jvmIfEqFalse :: String
jvmIfEqFalse = "ifeq"

jvmIfEqTrue :: String
jvmIfEqTrue = "ifne"

jvmIfCmpEq :: Type -> String
jvmIfCmpEq typ = 
	case typ of
		TypeBoolean -> "if_icmpeq"
		TypeInt -> "if_icmpeq"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \nifeq"

jvmIfCmpNe :: Type -> String
jvmIfCmpNe typ =
	case typ of
		TypeBoolean -> "if_icmpne"
		TypeInt -> "if_icmpne"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \nifne"

jvmIfCmpGe :: Type -> String
jvmIfCmpGe typ =
	case typ of
		TypeInt -> "if_icmpge"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmpge"

jvmIfCmpGt :: Type -> String
jvmIfCmpGt typ =
	case typ of
		TypeInt -> "if_icmpgt"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmpgt"

jvmIfCmpLe :: Type -> String
jvmIfCmpLe typ =
	case typ of
		TypeInt -> "if_icmple"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmple"

jvmIfCmpLt :: Type -> String
jvmIfCmpLt typ =
	case typ of
		TypeInt -> "if_icmplt"
		TypeDouble -> "dcmpg ; obsluga double bardziej skomplikowane \n" ++
					  "ldc 0 \n" ++
					  "if_icmplt"

-- Function

compileFunction :: PosFunction -> Context Code

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
			 bodyStmtsCode ++ "\n\n" ++ 
			 methodFooterCode
						


	where
		addArgs :: [(PosIdent, PosType)] -> Context ()
		addArgs [] = return ()
		addArgs (((Pos _ ident),(Pos _ typ)):args) = do
			addVarDef ident typ
			addArgs args
			return ()

		compileBody :: [PosStmt] -> Context Code
		compileBody [] = return ""
		compileBody (stmt:stmts) = do
			stmtCode <- compileStmt stmt
			stmtsCode <- compileBody stmts
			return $ stmtCode ++ "\n\n" ++ stmtsCode
	
calcStackSize :: Code -> Int
calcStackSize code =
	let codeBS = BSC8.pack code
	{-
	    ldcCount = length (BS.findSubstrings (BSC8.pack "ldc") codeBS)
	    ldc2_wCount = length (BS.findSubstrings (BSC8.pack "ldc2_w") codeBS)
	    iloadCount = length (BS.findSubstrings (BSC8.pack "iload") codeBS)
	    dloadCount = length (BS.findSubstrings (BSC8.pack "dload") codeBS) * 2
	    aloadCount = length (BS.findSubstrings (BSC8.pack "aload") codeBS)
		-}
	    ldcCount = countOccur (BSC8.pack "ldc ") codeBS
	    ldc2_wCount = countOccur (BSC8.pack "ldc2_w ") codeBS
	    iloadCount = countOccur (BSC8.pack "iload ") codeBS
	    dloadCount = (countOccur (BSC8.pack "dload ") codeBS) * 2
	    aloadCount = countOccur (BSC8.pack "aload ") codeBS
		
	in ldcCount + ldc2_wCount + iloadCount + dloadCount + aloadCount

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
		compile [] = return ""
		compile (stm:stms) = do
			stmCode <- compileStmt stm
			stmsCode <- compile stms
			return $ stmCode ++ "\n\n" ++ stmsCode


compileStmt (Pos pos (StmtVarsDecl (Pos _ typ) posDecls)) = do
	declsCode <- addVar posDecls
	return declsCode

	where
		addVar (decl:pDecls) = do
			declCode <- compileDecl typ decl
			declsCode <- addVar pDecls
			return $ declCode ++ "\n\n" ++ declsCode
		addVar [] = return ""


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

			return $ expCode ++ "\n" ++
					 "ifeq " ++ "IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
					 thenCode ++ "\n" ++
					 "IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n"
		else do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			popSymbolTable

			return $ expCode ++ "\n" ++
					 "ifeq " ++ "IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
					 thenCode ++ "\n" ++
					 "goto " ++ "IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
					 "IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
					 elseCode ++ "\n" ++
					 "IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
					 
					 


compileStmt (Pos (pos_l,pos_k) (StmtWhile posExp posStmt)) = do
	(expTyp, expCode) <- compileExp posExp
	
	pushEmptySymbolTable

	whileCode <- compileStmt posStmt

	popSymbolTable

	return $ "WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
			 expCode ++ "\n" ++
			 "ifeq " ++ "ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
			 whileCode ++ "\n" ++
			 "goto " ++ "WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
			 "ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n"


			 
			 

compileStmt (Pos (pos_l,pos_k) (StmtFor posAssig1 posExp posAssig2 posStmt)) = do
	assig1Code <- compileAssig posAssig1
	(expTyp, expCode) <- compileExp posExp
	assig2Code <- compileAssig posAssig2

	pushEmptySymbolTable
	forCode <- compileStmt posStmt
	popSymbolTable

	return $ assig1Code ++ "\n" ++
			 "FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
			 expCode ++ "\n" ++
			 "ifeq " ++ "ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
			 forCode ++ "\n" ++
			 assig2Code ++ "\n" ++
			 "goto " ++ "FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
			 "ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n"

compileStmt (Pos pos (StmtReturn maybePosExp)) = do
	case maybePosExp of
		Nothing ->
			return $ jvmReturnType TypeVoid
		Just posExp -> do
			(typ, expCode) <- compileExp posExp
			return $ expCode ++ "\n" ++
					 jvmReturnType typ

compileStmt (Pos pos (StmtExp posExp)) = do
	(typ, expCode) <- compileExp posExp
	return expCode

compileStmt (Pos pos (StmtEmpty)) = do
	return ""


-- Decl
compileDecl :: Type -> PosDecl -> Context Code
compileDecl typ (Pos pos (Decl (Pos _ ident) maybeExp)) = do
	case maybeExp of
		Nothing -> do
			addVarDef ident typ
			{- -- problem jesli nie zainicjowana
			let defCode = jvmConst (ExpInt 0)
			storeCode <- jvmStore ident
			foundVar <- findVarDef ident
			return $ defCode ++ "\n" ++ storeCode
			-}
			return ""

		Just posExp -> do
			(expTyp, expCode) <- compileExp posExp
			addVarDef ident typ
			storeCode <- jvmStore ident
			return $ expCode ++ "\n" ++ storeCode




-- Assig
compileAssig :: PosAssig -> Context (Code)

compileAssig (Pos pos (AssigEq (Pos posA ident) posExp)) = do
	(expTyp, expCode) <- compileExp posExp
	storeCode <- jvmStore ident
	return $ expCode ++ "\n" ++ storeCode
						
compileAssig (Pos pos (AssigInc (Pos _ ident))) = do
	loadCode <- jvmLoad ident
	let oneCode = jvmConst (ExpInt 1)
	let addCode = jvmAdd TypeInt
	storeCode <- jvmStore ident
	return $ loadCode ++ "\n" ++ oneCode ++ "\n" ++ addCode ++ "\n" ++ storeCode

compileAssig (Pos pos (AssigDec (Pos _ ident))) = do
	let oneCode = jvmConst (ExpInt 1)
	loadCode <- jvmLoad ident
	let subCode = jvmSub TypeInt
	storeCode <- jvmStore ident
	return $ loadCode ++ "\n" ++ oneCode ++ "\n" ++ subCode ++ "\n" ++ storeCode

-- Exp
compileExp :: PosExp -> Context (Type, Code)

compileExp (Pos pos (ExpList exps)) = do
	code <- compile exps

	return (TypeAny, code)

		where
			compile [] = return ""
			compile (exp:exps) = do
				(expTyp, expCode) <- compileExp exp
				expsCode <- compile exps
				return $ expCode ++ "\n" ++ expsCode

compileExp (Pos (pos_l,pos_k) (ExpBinaryOp binOp posExp1 posExp2)) = do
	(exp1Typ, exp1Code) <- compileExp posExp1
	(exp2Typ, exp2Code) <- compileExp posExp2

	case binOp of
		BoolAnd -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							"ifeq " ++ "ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							exp2Code ++ "\n" ++
							"ifeq " ++ "ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							jvmTrue ++ "\n" ++
							"goto " ++ "ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmFalse ++ "\n" ++
							"ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		BoolOr -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							jvmIfEqTrue ++ " ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							exp2Code ++ "\n" ++
							jvmIfEqTrue ++ " ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							jvmFalse ++ "\n" ++
							"goto " ++ " OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		ComperEq -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpEq exp1Typ) ++ " EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							jvmFalse ++ "\n" ++
							"goto " ++ "EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		ComperNotEq -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpNe exp1Typ) ++ " EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							jvmFalse ++ "\n" ++
							"goto " ++ "EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		RelaLe -> return $ (TypeBoolean,
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpLt exp1Typ) ++ " LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							jvmFalse ++ "\n" ++
							"goto " ++ "LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		RelaLeEq -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpLe exp1Typ) ++ " LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++ 
							jvmFalse ++ "\n" ++
							"goto " ++ "LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		RelaGt -> return $ (TypeBoolean,
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpGt exp1Typ) ++ " GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++ 
							jvmFalse ++ "\n" ++
							"goto " ++ "GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		RelaGtEq -> return $ (TypeBoolean, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmIfCmpGe exp1Typ) ++ " GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++ 
							jvmFalse ++ "\n" ++
							"goto " ++ "GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmTrue ++ "\n" ++
							"GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		AddiPlus -> return $ (exp1Typ, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmAdd exp1Typ)
							)
		AddiMinus -> return $ (exp1Typ, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmSub exp1Typ)
							)
		MultiMulti -> return $ (exp1Typ, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmMul exp1Typ)
							)
		MultiDiv -> return $ (exp1Typ, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmDiv exp1Typ)
							)
		MultiMod -> return $ (exp1Typ, 
							exp1Code ++ "\n" ++
							exp2Code ++ "\n" ++
							(jvmRem exp1Typ)
							)

compileExp (Pos (pos_l,pos_k) (ExpUnaryOp unOp posExp)) = do
	(typ, code) <- compileExp posExp

	case unOp of
		UnaryNot -> return $ (TypeBoolean,
							code ++ "\n" ++
							jvmIfEqTrue ++ " NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++ 
							jvmTrue ++ "\n" ++
							"goto " ++ "NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ "\n" ++
							"NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ": \n" ++
							jvmFalse ++ "\n" ++
							"NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k) ++ ":"
							)
		UnaryPlus -> return $ (typ,
							code ++ "\n" ++
							(jvmAdd typ)
							)
		UnaryMinus -> do
						case typ of
							TypeInt ->
								return $ (typ,
									code ++ "\n" ++
									(jvmConst (ExpInt (-1))) ++ "\n" ++
									(jvmMul typ)
									)
							TypeDouble ->
								return $ (typ,
									code ++ "\n" ++
									(jvmConst (ExpDouble (-1.0))) ++ "\n" ++
									(jvmMul typ)
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
						 expsCode ++ "\n" ++
						 "invokestatic " ++ progName ++ "/" ++ funName ++ 
						 "(" ++ argsTypesCode ++ ")" ++ returnTypeCode ++ "\n")
		Nothing -> return (TypeAny, "; blad nie zaleziono funkcji " ++ funName)

		
compileExp (Pos pos (ExpVar (Pos _ ident))) = do
	foundSymbol <- findVarDef ident

	case foundSymbol of
		Nothing -> do
			return (TypeAny, "; *** error: Nie istnieje zmienna o nazwie '" ++ ident ++ "' ")
		Just (VarDef ident typ nr) -> do
			code <- jvmLoad ident
			return (typ, code)

compileExp (Pos pos (ExpExp posExp)) = do
	(expTyp, expCode) <- compileExp posExp
	return (expTyp, expCode)

compileExp (Pos pos (ExpInt i)) = do
	return (TypeInt, jvmConst (ExpInt i))

compileExp (Pos pos (ExpDouble d)) = do
	return (TypeDouble, jvmConst (ExpDouble d))

compileExp (Pos pos (ExpString s)) = do
	return (TypeString, jvmConst (ExpString s))

compileExp (Pos pos (ExpTrue)) = do
	return (TypeBoolean, jvmConst ExpTrue)

compileExp (Pos pos (ExpFalse)) = do
	return (TypeBoolean, jvmConst ExpFalse)
