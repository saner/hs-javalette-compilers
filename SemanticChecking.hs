module SemanticChecking where

import Prelude
import Control.Monad
import Control.Monad.State
import qualified Data.Map as Map

import JavaletteLexer
import JavaletteParser


-- typy zastosowane w programie

data Symbol = VarSymbol Ident Type
			| FunctionSymbol Ident Type [Type]
			deriving (Show, Eq)

type SymbolTable = Map.Map Ident Symbol

type SymbolTables = [SymbolTable]

type Position = (Int, Int)

data Message = Error String Position
			| Warning String Position
			deriving (Show, Eq)

type Messages = [Message]

type Context a = State (SymbolTables, Messages) a

-- funkcje dodatkowe

inList :: Eq a => a -> [a] -> Bool
inList e (el:els) =
	if e == el
		then True
		else
			inList e els
inList e [] = False

binOpName :: BinaryOp -> String
binOpName binOp =
	case binOp of
		BoolAnd -> "&&"
		BoolOr -> "||"
		ComperEq -> "=="
		ComperNotEq -> "!="
		RelaLe -> "<"
		RelaLeEq -> "<="
		RelaGt -> ">"
		RelaGtEq -> ">="
		AddiPlus -> "+"
		AddiMinus -> "-"
		MultiMulti -> "*"
		MultiDiv -> "/"
		MultiMod -> "%"
	
unOpName :: UnaryOp -> String
unOpName unOp =
	case unOp of
		UnaryNot -> "!"
		UnaryPlus -> "+"
		UnaryMinus -> "-"
	

-- funkcje pomocnicze
addMessage :: Message -> Context () 
addMessage message = do
	(tables, messages) <- get
	let newMessages = message:messages
	put(tables, newMessages)
	

addSymbol :: Symbol -> Context ()
addSymbol symbol = do
	(table:tables, messages) <- get
	case symbol of
		VarSymbol ident _ ->  do
			let newTable = Map.insert ident symbol table
			put(newTable:tables, messages)
		FunctionSymbol ident _ _ ->  do
			let newTable = Map.insert ident symbol table
			put(newTable:tables, messages)


findSymbolInTopTable :: Ident -> Context (Maybe Symbol)
findSymbolInTopTable ident = do
	(table:tables, _) <- get
	case Map.lookup ident table of
		Nothing -> return Nothing
		Just symbol -> return $ Just symbol

findIdentSymbol :: Ident -> Context (Maybe Symbol)
findIdentSymbol ident = do
	(tables, messages) <- get
	return $ findInTable ident tables
	where
		findInTable ident (table:tables) =
			case Map.lookup ident table of
				Nothing -> findInTable ident tables
				Just symbol -> Just symbol
		findInTable ident [] = Nothing



pushEmptySymbolTable :: Context ()
pushEmptySymbolTable = do
	(tables, messages) <- get
	let newTables = (Map.empty):tables
	put(newTables, messages)


popSymbolTable :: Context ()
popSymbolTable = do
	(table:tables, messages) <- get
	put(tables, messages)

compatibleAssigTypes :: Type -> Type -> Bool
compatibleAssigTypes typ1 typ2 =
	if typ1 == typ2
		then True
		else
			case (typ1, typ2) of
				--(TypeDouble, TypeInt) -> True
				(TypeAny, _) -> True
				(_, TypeAny) -> True
				_ -> False

compatibleCompTypes :: Type -> Type -> Bool
compatibleCompTypes typ1 typ2 =
	if typ1 == typ2
		then True
		else
			case (typ1, typ2) of
				(TypeInt, TypeBoolean) -> True
				(TypeBoolean, TypeInt) -> True
				(TypeAny, _) -> True
				(_, TypeAny) -> True
				_ -> False

compatibleOpBinTypes :: Type -> Type -> Type
compatibleOpBinTypes typ1 typ2 =
	if typ1 == typ2
		then typ1
		else
			case (typ1, typ2) of
				(TypeInt, TypeBoolean) -> TypeBoolean
				(TypeBoolean, TypeInt) -> TypeBoolean
				(TypeAny, _) -> typ2
				(_, TypeAny) -> typ1
				_ -> TypeAny

compatibleArithTypes :: Type -> Bool
compatibleArithTypes typ =
	case typ of
		TypeDouble -> True
		TypeInt -> True
		TypeAny -> True
		_ -> False

compatibleBoolTypes :: Type -> Bool
compatibleBoolTypes typ =
	case typ of
		TypeBoolean -> True
		_ -> False

addWasReturn :: Context () -- hack
addWasReturn = addSymbol $ VarSymbol "**was_return**" TypeAny

wasReturn :: Context (Bool) -- hack
wasReturn = do
	foundSymbol <- findIdentSymbol "**was_return**"
	case foundSymbol of
		Just _ -> return True
		Nothing -> return False

checkWasReturn :: Position -> Context () -- hack
checkWasReturn pos = do
	was <- wasReturn
	if was
		then return ()
		else addMessage (Error "Nie bylo return" pos)

-- Program

checkProgram :: Program -> Context ()

checkProgram (Program funs) = do
	pushEmptySymbolTable
	addBuiltInFunsDefs
	addFunctionsDefs funs
	checkMainExitsInTable
	checkFunctions funs

addBuiltInFunsDefs :: Context ()
addBuiltInFunsDefs = do
	addSymbol $ FunctionSymbol "printInt" TypeVoid [TypeInt]	
	addSymbol $ FunctionSymbol "printDouble" TypeVoid [TypeDouble]	
	addSymbol $ FunctionSymbol "printString" TypeVoid [TypeString]	
	addSymbol $ FunctionSymbol "error" TypeVoid []	
	addSymbol $ FunctionSymbol "readInt" TypeInt []	
	addSymbol $ FunctionSymbol "readDouble" TypeDouble []	


addFunctionsDefs :: [PosFunction] -> Context ()

addFunctionsDefs posFuns = do
	add posFuns
	return ()
	where
		add ((Pos _ fun):[]) =
			addFunctionDef fun
		add ((Pos _ fun):funs) = do
			addFunctionDef fun
			add funs


addFunctionDef :: Function -> Context ()
addFunctionDef (Function (Pos _ ident) (Pos pos typ) args stms) = do
	let argsTypes = map (\((Pos _ _),(Pos _ t)) -> t) args
	addSymbol $ FunctionSymbol ident typ argsTypes


checkMainExitsInTable :: Context ()
checkMainExitsInTable = do
	foundSymbol <- findIdentSymbol "main"
	case foundSymbol of
		Nothing -> addMessage $ Error "Nie ma funkcji main()" (0,0)
		Just symbol ->
			case symbol of
				VarSymbol _ _ -> addMessage $ Error "Nie ma funkcji main()" (0,0)
				FunctionSymbol i t a -> return ()


checkFunctions :: [PosFunction] -> Context ()
checkFunctions posFuns = do
	--map (\(Pos _ fun) -> checkFunction fun) posFuns
	check posFuns
	return ()
	where
		check (fun:[]) =
			checkFunction fun
		check (fun:funs) = do
			checkFunction fun
			check funs


-- Function

checkFunction :: PosFunction -> Context ()

checkFunction (Pos pos (Function (Pos _ ident) (Pos _ returnTyp) args stms)) = do
	pushEmptySymbolTable

	addSymbol $ VarSymbol "**return_type**" returnTyp --hack

	let defArgs = map (\((Pos _ _),(Pos _ t)) -> t) args
	addSymbol $ FunctionSymbol ident returnTyp defArgs
	
	addArgs args
	checkBody stms

	checkWasReturn pos -- hack
	
	popSymbolTable

	where
		addArgs [] = return ()
		addArgs (((Pos _ ident),(Pos _ typ)):args) = do
			addSymbol $ VarSymbol ident typ
			addArgs args

		checkBody [] = return ()
		checkBody (stmt:stms) = do
			checkStmt stmt
			checkBody stms
	

-- Stmt

checkStmt :: PosStmt -> Context ()

checkStmt (Pos pos (StmtList posStms)) = do

	pushEmptySymbolTable
	check posStms
	wReturn <- wasReturn
	popSymbolTable
	if wReturn
		then addWasReturn
		else return ()

	where
		check [] = return ()
		check (stm:stms) = do
			checkStmt stm
			check stms


checkStmt (Pos pos (StmtVarsDecl (Pos _ typ) posDecls)) = do
	addVar posDecls
	where
		addVar (decl:pDecls) = do
			checkDecl typ decl
			addVar pDecls
		addVar [] = return ()

checkStmt (Pos pos (StmtAssig posAssig)) = do
	checkAssig posAssig
	return()

checkStmt (Pos pos (StmtIf posExp posStIf posStElse)) = do
	checkExp posExp

	pushEmptySymbolTable
	checkStmt posStIf
	returnIf <- wasReturn
	popSymbolTable

	let (Pos _ stElse) = posStElse
	if stElse == StmtEmpty
		then
			if returnIf
				then addWasReturn
				else return ()
		else do
			pushEmptySymbolTable
			checkStmt posStElse
			returnElse <- wasReturn
			popSymbolTable
			if returnIf && returnElse
				then addWasReturn
				else return ()

checkStmt (Pos pos (StmtWhile posExp posStmt)) = do
	checkExp posExp
	
	pushEmptySymbolTable
	checkStmt posStmt
	popSymbolTable

checkStmt (Pos pos (StmtFor posAssig1 posExp posAssig2 posStmt)) = do
	checkAssig posAssig1
	checkExp posExp
	checkAssig posAssig2

	pushEmptySymbolTable
	checkStmt posStmt
	popSymbolTable

checkStmt (Pos pos (StmtReturn maybePosExp)) = do
	foundSymbol <- findIdentSymbol "**return_type**"
	addWasReturn
	case maybePosExp of
		Nothing ->
			case foundSymbol of
				Just symbol ->
					case symbol of
						VarSymbol ident varTyp  -> 
							if varTyp == TypeVoid
								then return ()
								else do
									addMessage (Error "Zly typ zwracanej wartosci" pos)
									return ()
		Just posExp -> do
			expTyp <- checkExp posExp
			case foundSymbol of
				Just symbol ->
					case symbol of
						VarSymbol ident varTyp -> 
							if varTyp == expTyp
								then return ()
								else do
									addMessage (Error "Zly typ zwracanej wartosci" pos)
									return ()

checkStmt (Pos pos (StmtExp posExp)) = do
	checkExp posExp
	return()

checkStmt (Pos pos (StmtEmpty)) = do
	return()


-- Decl
checkDecl :: Type -> PosDecl -> Context ()
checkDecl typ (Pos pos (Decl (Pos _ ident) maybeExp)) = do
	foundSymbol <- findSymbolInTopTable ident
	case foundSymbol of
		Nothing -> 
			case maybeExp of
				Nothing -> addSymbol (VarSymbol ident typ) 
				Just posExp -> do
					typExp <- checkExp posExp
					if compatibleAssigTypes typ typExp
						then addSymbol (VarSymbol ident typ) 
						else do
							addMessage (Error ("Blad w deklaracji '" ++ ident ++ "' zle typy " ++ (show typ) ++ " = " ++ (show typExp)) pos)
							addSymbol (VarSymbol ident typ) 
		Just symbol ->
			case symbol of
				VarSymbol ident typ -> do
					addMessage (Error ("Istnieje zmienan o nazwie " ++ ident ++ " w tym bloku") pos)
					addSymbol (VarSymbol ident TypeAny) 



-- Assig
checkAssig :: PosAssig -> Context ()

checkAssig (Pos pos (AssigEq (Pos posA ident) posExp)) = do
	foundSymbol <- findIdentSymbol ident
	typ <- checkExp posExp
	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie mozna dokonac przypisania, nie ma zadeklarowanej zmiennej o nazwie '" ++ ident ++ "' ") posA)
			addSymbol (VarSymbol ident typ) 
		Just symbol ->
			case symbol of
				VarSymbol ident varTyp ->
					if compatibleAssigTypes varTyp typ
						then addSymbol $ VarSymbol ident varTyp
						else addMessage (Error ("Nie mozna dokonac przypisania na zmienna '" ++ ident ++ "', zle typy ") posA)
				FunctionSymbol ident funTyp args ->
						addMessage (Error (ident ++ "to funkcja, nie mozna przypisywac na funkcje") posA)
						
checkAssig (Pos pos (AssigInc (Pos _ ident))) = do
	foundSymbol <- findIdentSymbol ident
	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje zmienna o nazwie '" ++ ident ++ "' ") pos)
			addSymbol (VarSymbol ident TypeInt)
		Just symbol ->
			case symbol of
				VarSymbol ident typ ->
					if typ == TypeInt
						then return ()
						else addMessage (Error ("Nie mozna dokonac inc/dec na typie '" ++ (show typ) ++ "' ") pos)
				FunctionSymbol ident funTyp args ->
						addMessage (Error (ident ++ "to funkcja, nie mozna dokonac inc/dec na funkcji") pos)

checkAssig (Pos pos (AssigDec (Pos _ ident))) = do
	checkAssig (Pos pos (AssigInc (Pos pos ident)))

-- Exp
checkExp :: PosExp -> Context Type

checkExp (Pos pos (ExpList exps)) = do
	check exps
		where
			check [] = return TypeAny
			check (exp:exps) = do
				checkExp exp
				check exps

checkExp (Pos pos (ExpBinaryOp binOp posExp1 posExp2)) = do
	typ1 <- checkExp posExp1
	typ2 <- checkExp posExp2
	let (Pos pos1 _) = posExp1

	if inList binOp [BoolAnd, BoolOr]
		then if (compatibleBoolTypes typ1) && (compatibleBoolTypes typ2)
				then return TypeBoolean
				else do
					addMessage (Error ((show binOp) ++ " mozna wykonac tylko na typie Boolean") pos1)
					return TypeBoolean
		else if inList binOp [ComperEq, ComperNotEq, RelaLe, RelaLeEq, RelaGt, RelaGtEq]
				then if compatibleCompTypes typ1 typ2
						then return TypeBoolean
						else do
							addMessage (Error ("Zle typy w operacji " ++ (binOpName binOp)) pos1)
							return TypeBoolean
				else case compatibleOpBinTypes typ1 typ2 of
						TypeAny -> do
							addMessage (Error ("Zle typy w operaci " ++ (binOpName binOp)) pos1)
							return TypeAny
						_ -> do
							return (compatibleOpBinTypes typ1 typ2)

checkExp (Pos pos (ExpUnaryOp unOp posExp)) = do
	typ <- checkExp posExp

	if unOp == UnaryNot
		then
			if compatibleBoolTypes typ
				then return typ
				else do
					addMessage (Error ("Typ " ++ (show typ) ++ " niekompatybilny z operacja " ++ (unOpName unOp)) pos)
					return TypeBoolean
		else
			if compatibleArithTypes typ
				then return typ
				else do
					addMessage (Error ("Typ " ++ (show typ) ++ " niekompatybilny z operacja " ++ (unOpName unOp)) pos)
					return TypeAny

checkExp (Pos pos (ExpCallFunc (Pos _ ident) exps)) = do
	foundSymbol <- findIdentSymbol ident
	let argsTypes = fmap (\e -> checkExp e) exps

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje funkcja o nazwie '" ++ ident ++ "' ") pos)
			return TypeAny
		Just symbol ->
			case symbol of
				FunctionSymbol ident funTyp funArgs -> do
						checkArgs funArgs argsTypes
						return funTyp
						where
							checkArgs [] [] = return ()
							checkArgs [] fas =
										addMessage (Error ("Za duzo parametrow do funkcji " ++ ident) pos)
							checkArgs fts [] =
										addMessage (Error ("Za malo parametrow do funkcji " ++ ident) pos)
							checkArgs (ft:fts) (fa:fas) = do
								fTyp <- fa								
								if ft == fTyp
									then checkArgs fts fas
									else do
										addMessage (Error ("Blad typu parametru dla funkcji " ++ ident) pos)
										checkArgs fts fas
								
				VarSymbol ident typ -> do
						addMessage (Error ("Nie istnieje funkcja o nazwie '" ++ ident ++ "' ") pos)
						return TypeAny
		
checkExp (Pos pos (ExpVar (Pos _ ident))) = do
	foundSymbol <- findIdentSymbol ident

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje zmienna o nazwie '" ++ ident ++ "' ") pos)
			return TypeAny
		Just symbol ->
			case symbol of
				FunctionSymbol ident funTyp args -> do
						addMessage (Error ("Nie ma zmiennej o nazwie " ++ ident ++ ", ale istnieje taka funkcja") pos)
						return TypeAny
				VarSymbol ident typ -> return typ

checkExp (Pos pos (ExpExp posExp)) =
	checkExp posExp

checkExp (Pos pos (ExpInt _)) =
	return TypeInt

checkExp (Pos pos (ExpDouble _)) =
	return TypeDouble

checkExp (Pos pos (ExpString _)) =
	return TypeString

checkExp (Pos pos (ExpTrue)) =
	return TypeBoolean

checkExp (Pos pos (ExpFalse)) =
	return TypeBoolean
