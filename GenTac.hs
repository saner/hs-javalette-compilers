module GenTac where

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

type Label = String

-- zawiera liste wykorzystanych identyfikatorow w programie 
-- rozwiazuje problem z blokami, gdzie moze zmienna o tej samej
-- nazwie wystapic w kilku blokach, musimy zmienic jej nazwe w pozostalych blokach
type UsedVarNames = Map.Map Ident (Ident, Int)  -- pelna nazwa, 1. czesc nazwy (String), 2. czesc nazwy (Int)

initUsedVarNames = Map.empty


type CompilerState = ( UsedVarNames, FunctionDefTable, [VarDefTable] )

type Context a = State CompilerState a



data OpArg = None
		   | Var Ident
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
data TacCode = TacCopy Ident OpArg -- x := y
			 | TacBinOpCopy Ident ArithOp OpArg OpArg -- x := y binOp z
			 | TacUnOpCopy Ident UnOp OpArg -- x := unOp y
			 | TacRelOpCopy Ident RelOp OpArg OpArg -- x := y cmpOp z
			 | TacIfJmp OpArg Label -- if unOp y goto L
			 | TacIfJmpUn UnOp OpArg Label -- if unOp y goto L
			 | TacIfJmpRel RelOp OpArg OpArg Label -- if x opRel y goto L
			 | TacGoto Label -- goto L
			 | TacLabel Label -- L:
			 | TacParam OpArg -- "param x"
			 | TacCallWithReturn Ident Ident Int -- t := call L, n
			 | TacCallNoReturn Ident Int -- call L, n
			 | TacFunction Ident [Ident]  -- function name(arg0, arg1, ...)
			 | TacEndFunction -- endfunction
			 | TacReturnWithValue OpArg -- return x
			 | TacReturnNoValue -- return x
			 | TacComment String -- ; comment
			 | TacNewLine
			 deriving (Eq)

type Code = [TacCode]

-- funkcje dodatkowe

hahaVarToIndent :: Var -> Ident
hahaVarToIndent var =
	case var of
		VarNormal ident -> ident
		VarArray ident size -> ident

-- funkcje pomocnicze

addVarDef :: Ident -> Type -> Context ()
addVarDef ident typ = do

	tacName <- getUnusedVarName ident

	(usedVarNames, funs, (table:tables)) <- get

	let newTable = Map.insert ident (VarDef ident typ tacName) table

	put(usedVarNames, funs, (newTable:tables))

addFunctionDef :: FunctionDef -> Context ()
addFunctionDef (FunctionDef ident typ args)  = do
	(usedVarNames, funs, tables) <- get

	let newFuns = Map.insert ident (FunctionDef ident typ args) funs

	put (usedVarNames, newFuns, tables)


findVarDef :: Ident -> Context (Maybe VarDef)
findVarDef ident = do
	(usedVarNames, funs, tables) <- get
	return $ findInTables ident tables
	where
		findInTables ident (table:tables) =
			case Map.lookup ident table of
				Nothing -> findInTables ident tables
				Just var -> Just var
		findInTables ident [] = Nothing

findVarTacName :: Ident -> Context Ident
findVarTacName ident = do
	foundVar <- findVarDef ident

	case foundVar of
		Just (VarDef _ typ tacName)  -> return tacName
		Nothing -> return ""


findFunDef :: Ident -> Context (Maybe FunctionDef)
findFunDef ident = do
	(usedVarNames, funs, tables) <- get
	return $ Map.lookup ident funs




pushEmptySymbolTable :: Context ()
pushEmptySymbolTable = do
	(usedVarNames, funs, tables) <- get
	let newTables = (Map.empty):tables
	put (usedVarNames, funs, newTables)


popSymbolTable :: Context ()
popSymbolTable = do
	(usedVarNames, funs, (table:tables)) <- get
	put (usedVarNames, funs, tables)

getUnusedVarName :: Ident -> Context Ident
getUnusedVarName ident = do
	(usedVarNames, funs, tables) <- get

	let used = Map.lookup ident usedVarNames

	case used of
		Just (name, no) -> do
			let lastId = no + 1
			let newVarNames = Map.insert ident (name, lastId) usedVarNames
			put (newVarNames, funs, tables)
			return $ ident ++ (show lastId)
			
		Nothing -> do
			let lastId = 0
			let newVarNames = Map.insert ident (ident, lastId) usedVarNames
			put (newVarNames, funs, tables)
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
			
			
		

-- Program

compileProgram :: ProgName -> Program -> Context String
compileProgram usedVarNames (Program funs) = do
	-- dodanie wbudowanych funkcji
	addTreeBuiltInFunsDefs
	
	-- dodanie do srodowiska informacji o funkcjach
	addTreeFunctionsDefs funs

	-- kompilacja funkcji
	funsCode <- compileFunctions funs

	let funsCodeString = foldl (\s c -> s ++ "\n" ++ (show c)) "" funsCode

	return funsCodeString
			
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


-- translacja kodu TacCode do kodu wyjsciowego czytelnego dla czlowieka

instance Show OpArg where
	show None = ""
	show (Var ident) = ident
	show (ConstInt i) = show i
	show (ConstDouble d) = show d
	show (ConstBoolean b) = show b
	show (ConstString s) = s


instance Show ArithOp where
	show Add = "+"
	show Sub = "-"
	show Mul = "*"
	show Div = "/"
	show Rem = "%"

instance Show UnOp where
	show Neg = "-"
	show Not = "not"

instance Show RelOp where
	show Lt = "<"
	show Le = "<="
	show Gt = ">"
	show Ge = ">="
	show Eq = "=="
	show Ne = "!="

instance Show TacCode where
	show (TacCopy varName val) =
		varName ++ " := " ++ (show val)
	show (TacBinOpCopy varName arithOp val1 val2) = 
		varName ++ " := " ++ (show val1) ++ " " ++ (show arithOp) ++ " " ++ (show val2)
	show (TacUnOpCopy varName unOp val) = 
		varName ++ " := " ++ (show unOp) ++ " " ++ (show val)
	show (TacRelOpCopy varName relOp val1 val2) = 
		varName ++ " := " ++ (show val1) ++ " " ++ (show relOp) ++ " " ++ (show val2)
	show (TacIfJmp val label) = 
		"if " ++ (show val) ++ " goto " ++ label
	show (TacIfJmpUn unOp val label) = 
		"if " ++ (show unOp) ++ " " ++ (show val) ++ " goto " ++ label
	show (TacIfJmpRel relOp val1 val2 label) = 
		"if " ++ (show val1) ++ " " ++ (show relOp) ++ " " ++ (show val2) ++ " goto " ++ label
	show (TacGoto label) = 
		"goto " ++ label
	show (TacLabel label) = 
		label ++ ":"
	show (TacParam val) = 
		"param " ++ (show val)
	show (TacCallWithReturn varName ident no) = 
		varName ++ " := call " ++ ident ++ ", " ++ (show no)
	show (TacCallNoReturn ident no) = 
		"call " ++ ident ++ ", " ++ (show no)
	show (TacFunction ident args) = 
		let shArgs = foldl (\s a -> s ++ " " ++ a) "" args
		in "function " ++ ident ++ "[" ++ shArgs ++ "]"
	show (TacEndFunction) = 
		"endfunction "
	show (TacReturnNoValue) = 
		"return"
	show (TacReturnWithValue val) = 
		"return " ++ (show val)
	show (TacComment comment) = 
		"; " ++ comment
	show (TacNewLine) = 
		"\n"

		
		


-- Function

compileFunction :: PosFunction -> Context Code

compileFunction (Pos pos (Function (Pos _ ident) (Pos _ returnTyp) args stms nestedVars nestedFuns)) = do
	pushEmptySymbolTable

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
	-- ustalenie nazw argumentow
	let argsNames = map (\((Pos _ var),_) -> (hahaVarToIndent var)) args


	let functionHeader = TacFunction ident argsNames

	let functionFooter = TacEndFunction

	return $ [functionHeader] ++
			 bodyStmtsCode ++
			 [functionFooter]
						


	where
		addArgs :: [(PosVar, PosType)] -> Context ()
		addArgs [] = return ()
		addArgs (((Pos _ var),(Pos _ typ)):args) = do
			let ident = hahaVarToIndent var
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
	(assigType, assigCode) <- compileAssig posAssig
	return $ assigCode

compileStmt (Pos (pos_l,pos_k) (StmtIf posExp posStThen posStElse)) = do
	(var, expCode) <- compileExp posExp

	pushEmptySymbolTable

	thenCode <- compileStmt posStThen

	popSymbolTable

	let (Pos _ stElse) = posStElse
	if stElse == StmtEmpty
		then do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			newVar <- getNewTempVarName TypeInt

			popSymbolTable

			return $ expCode ++
					 [TacIfJmpUn Not var ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 thenCode ++
					 [TacLabel ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
		else do
			pushEmptySymbolTable

			elseCode <- compileStmt posStElse

			newVar <- getNewTempVarName TypeInt

			popSymbolTable

			return $ expCode ++ 
					 [TacIfJmpUn Not var ("IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 thenCode ++
					 [TacGoto ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 [TacLabel ("IFELSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
					 elseCode ++
					 [TacLabel ("IFEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
					 
					 


compileStmt (Pos (pos_l,pos_k) (StmtWhile posExp posStmt)) = do
	(expVar, expCode) <- compileExp posExp
	
	pushEmptySymbolTable

	whileCode <- compileStmt posStmt

	newVar <- getNewTempVarName TypeInt

	popSymbolTable

	return $ [TacLabel ("WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 expCode ++
			 [TacIfJmpUn Not expVar ("ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 whileCode ++
			 [TacGoto ("WHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 [TacLabel ("ENDWHILE_" ++ (show pos_l) ++ "_" ++ (show pos_k))]



compileStmt (Pos (pos_l,pos_k) (StmtFor posAssig1 posExp posAssig2 posStmt)) = do
	(assig1Type, assig1Code) <- compileAssig posAssig1
	(expVar, expCode) <- compileExp posExp
	(assig2Type, assig2Code) <- compileAssig posAssig2

	pushEmptySymbolTable
	forCode <- compileStmt posStmt
	popSymbolTable

	return $ assig1Code ++
			 [TacLabel ("FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 expCode ++
			 [TacIfJmpUn Not expVar ("ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 forCode ++
			 assig2Code ++
			 [TacGoto ("FOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
			 [TacLabel ("ENDFOR_" ++ (show pos_l) ++ "_" ++ (show pos_k))]

compileStmt (Pos pos (StmtReturn maybePosExp)) = do
	case maybePosExp of
		Nothing ->
			return [TacReturnNoValue]
		Just posExp -> do
			(expVar, expCode) <- compileExp posExp
			return $ expCode ++
					 [TacReturnWithValue expVar]

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
			return []

		Just posExp -> do
			(expTyp, expCode) <- compileExp posExp

			addVarDef (hahaVarToIndent ident) typ

			tacName <- findVarTacName (hahaVarToIndent ident)

			return $ expCode ++
					 [TacCopy tacName expTyp]


-- Assig
compileAssig :: PosAssig -> Context (OpArg, Code)

compileAssig (Pos pos (AssigEq (Pos _ var) posExp)) = do
	(expVar, expCode) <- compileExp posExp
	let ident = hahaVarToIndent var

	tacName <- findVarTacName ident

	return $ (Var ident, expCode ++
						   [TacCopy tacName expVar])

						
compileAssig (Pos pos (AssigInc (Pos _ var))) = do
	let ident = hahaVarToIndent var

	tacName <- findVarTacName ident

	return $ (Var tacName, 
					[TacBinOpCopy tacName Add (Var tacName) (ConstInt 1)])

compileAssig (Pos pos (AssigDec (Pos _ var))) = do
	let ident = hahaVarToIndent var

	tacName <- findVarTacName ident

	return $ (Var tacName, 
					[TacBinOpCopy tacName Sub (Var tacName) (ConstInt 1)])

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

compileExp (Pos (pos_l,pos_k) (ExpBinaryOp binOp posExp1 posExp2)) = do
	(exp1Var, exp1Code) <- compileExp posExp1
	(exp2Var, exp2Code) <- compileExp posExp2



	case binOp of
		BoolAnd -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							[TacIfJmpUn Not exp1Var ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							exp2Code ++
							[TacIfJmpUn Not exp2Var ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacGoto ("ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("ANDFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacLabel ("ANDEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		BoolOr -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							[TacIfJmp exp1Var ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							exp2Code ++
							[TacIfJmp exp2Var ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("ORTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[(TacLabel ("OREND_" ++ (show pos_l) ++ "_" ++ (show pos_k)))]
							)
		ComperEq -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Eq exp1Var exp2Var  ("EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("EQTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		ComperNotEq -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Ne exp1Var exp2Var ("EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("EQFALSE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("EQEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaLe -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Lt exp1Var exp2Var (" LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("LTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("LTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaLeEq -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Le exp1Var exp2Var ("LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("LETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("LEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaGt -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Gt exp1Var exp2Var ("GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("GTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("GTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		RelaGtEq -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacIfJmpRel Ge exp1Var exp2Var ("GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacGoto ("GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("GETRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacLabel ("GEEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		AddiPlus -> do
				varRet <- getNewTempVarName TypeInt
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacBinOpCopy varRet Add exp1Var exp2Var ]
							)
		AddiMinus -> do
				varRet <- getNewTempVarName TypeInt
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacBinOpCopy varRet Sub exp1Var exp2Var ]
							)
		MultiMulti -> do
				varRet <- getNewTempVarName TypeInt
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacBinOpCopy varRet Mul exp1Var exp2Var ]
							)
		MultiDiv -> do
				varRet <- getNewTempVarName TypeInt
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacBinOpCopy varRet Div exp1Var exp2Var ]
							)
		MultiMod -> do
				varRet <- getNewTempVarName TypeInt
				return $ (Var varRet, 
							exp1Code ++
							exp2Code ++
							[TacBinOpCopy varRet Rem exp1Var exp2Var ]
							)

compileExp (Pos (pos_l,pos_k) (ExpUnaryOp unOp posExp)) = do
	(var, code) <- compileExp posExp

	case unOp of
		UnaryNot -> do
				varRet <- getNewTempVarName TypeBoolean
				return $ (Var varRet,
							code ++
							[TacIfJmp var ("NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean True)]  ++
							[TacGoto ("NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacLabel ("NOTTRUE_" ++ (show pos_l) ++ "_" ++ (show pos_k))] ++
							[TacCopy varRet (ConstBoolean False)]  ++
							[TacLabel ("NOTEND_" ++ (show pos_l) ++ "_" ++ (show pos_k))]
							)
		UnaryPlus -> 
				return $ (var, code)
		UnaryMinus -> do
				varRetOp <- getNewTempVarName TypeInt
				return $ (Var varRetOp,
					code ++
					[TacBinOpCopy varRetOp Mul var (ConstInt (-1))]
					)


compileExp (Pos pos (ExpCallFunc (Pos _ funName) exps)) = do
	foundFun <- findFunDef funName

	compExps <- compile exps

	let expsVarsCode = concat $ map (\(v,c) -> c) compExps
	let varsParam = map (\(v,c) -> TacParam v) compExps

	let noArgs = length exps

	case foundFun of
		Just (FunctionDef _ retTyp argsTyp) -> do
			case retTyp of
				TypeVoid -> return $ (None, expsVarsCode ++
											    varsParam ++
											    [TacCallNoReturn funName noArgs])
				_ -> do
						newVar <- getNewTempVarName retTyp
						return $ (Var newVar, expsVarsCode ++
										  varsParam ++
										  [TacCallWithReturn newVar funName noArgs])
		Nothing -> return (ConstString "*** brak funkcji ***", [TacComment ("; blad nie zaleziono funkcji " ++ funName)])

	where
		compile :: [PosExp] -> Context [(OpArg, Code)]
		compile [] = return []
		compile (exp:exps) = do
			compExp <- compileExp exp
			compExps <- compile exps
			return $ compExp : compExps

		
compileExp (Pos pos (ExpVar (Pos _ var))) = do
	let ident = hahaVarToIndent var
	tacName <- findVarTacName ident
	return (Var tacName, [])

compileExp (Pos pos (ExpExp posExp)) = do
	(expVar, expCode) <- compileExp posExp
	return (expVar, expCode)


compileExp (Pos pos (ExpAssig assig)) =
	compileAssig assig
				
compileExp (Pos pos (ExpInt i)) = do
	return (ConstInt i, [])

compileExp (Pos pos (ExpDouble d)) = do
	newVar <- getNewTempVarName TypeDouble
	return (ConstDouble d, [])

compileExp (Pos pos (ExpString s)) = do
	newVar <- getNewTempVarName TypeString
	return (ConstString s, [])

compileExp (Pos pos (ExpTrue)) = do
	newVar <- getNewTempVarName TypeBoolean
	return (ConstBoolean True, [])

compileExp (Pos pos (ExpFalse)) = do
	newVar <- getNewTempVarName TypeBoolean
	return (ConstBoolean False, [])
