module SemanticChecking where

import Prelude
import Control.Monad
import Control.Monad.State
import qualified Data.Map as Map

import JavaletteLexer
import JavaletteParser


-- typy zastosowane w programie

data Symbol = VarNormalSymbol Ident Type
			| VarArraySymbol Ident Type (Either Int Ident)
			| FunctionSymbol Ident RetType [RetType]
			deriving (Show, Eq)

type SymbolTable = Map.Map Ident Symbol

type SymbolTables = [SymbolTable]

type Position = (Int, Int)

data Message = Error String Position
			| Warning String Position
			deriving (Show, Eq)

type Messages = [Message]

type Context a = State (SymbolTables, Messages) a


data RetType = RetVar Type
			 | RetArray Type (Either Int Ident)
			 deriving (Show, Eq)

type ExpRetType = RetType


-- funkcje dodatkowe

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
		VarNormalSymbol ident _ ->  do
			let newTable = Map.insert ident symbol table
			put(newTable:tables, messages)
		VarArraySymbol ident _ _ ->  do
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

findVarSymbol :: Var -> Context (Ident, Maybe Symbol)
findVarSymbol var = do
	(tables, messages) <- get

	let ident = case var of
					VarNormal ident -> ident
					VarArray ident size -> ident

	found <- findIdentSymbol ident

	return (ident, found)




pushEmptySymbolTable :: Context ()
pushEmptySymbolTable = do
	(tables, messages) <- get
	let newTables = (Map.empty):tables
	put(newTables, messages)


popSymbolTable :: Context ()
popSymbolTable = do
	(table:tables, messages) <- get
	put(tables, messages)

typeFromRetType :: RetType -> Type
typeFromRetType ret =
	case ret of
		RetVar typ -> typ
		RetArray typ size -> typ

assertExistsVarNormal :: Ident -> (Int,Int) -> Context ()
assertExistsVarNormal ident pos = do
	found <- findIdentSymbol ident

	case found of
		Just symbol ->
			case symbol of
				VarNormalSymbol _ typ -> return ()
				_ -> addMessage (Error ("Zmiennej o nazwie " ++ ident ++ " nie istnieje ") pos)
		Nothing -> addMessage (Error ("Zmiennej o nazwie " ++ ident ++ " nie istnieje ") pos)


compatibleAssigTypes :: RetType -> RetType -> Bool
compatibleAssigTypes typ1 typ2 =
	case (typ1,typ2) of
		(RetArray typ1 size1, RetArray typ2 size2) -> 
			(compatibleAssigTypes (RetVar typ1) (RetVar typ2)) && (size1 == size2)
		(RetVar typ1, RetVar typ2) -> 
			if typ1 == typ2
				then True
				else
					case (typ1, typ2) of
						--(TypeDouble, TypeInt) -> True
						(TypeAny, _) -> True
						(_, TypeAny) -> True
						_ -> False
		(_, _) -> False

compatibleCompTypes :: RetType -> RetType -> Bool
compatibleCompTypes typ1 typ2 =
	case (typ1, typ2) of
		(RetVar typ1, RetVar typ2) -> 
			if typ1 == typ2
				then True
				else
					case (typ1, typ2) of
						(TypeInt, TypeBoolean) -> True
						(TypeBoolean, TypeInt) -> True
						(TypeAny, _) -> True
						(_, TypeAny) -> True
						_ -> False
		(_, _) -> False

compatibleOpBinTypes :: RetType -> RetType -> Type
compatibleOpBinTypes typ1 typ2 =
	case (typ1, typ2) of
		(RetVar typ1, RetVar typ2) -> 
			if typ1 == typ2
				then typ1
				else
					case (typ1, typ2) of
						(TypeInt, TypeBoolean) -> TypeBoolean
						(TypeBoolean, TypeInt) -> TypeBoolean
						(TypeAny, _) -> typ2
						(_, TypeAny) -> typ1
						_ -> TypeAny
		(_, _) -> TypeAny

compatibleArithTypes :: RetType -> Bool
compatibleArithTypes typ =
	case typ of
		RetVar typ -> 
			case typ of
				TypeDouble -> True
				TypeInt -> True
				TypeAny -> True
				_ -> False
		_ -> False

compatibleBoolTypes :: RetType -> Bool
compatibleBoolTypes typ =
	case typ of
		RetVar typ -> 
			case typ of
				TypeBoolean -> True
				_ -> False
		_ -> False

addWasReturn :: Context () -- hack
addWasReturn = addSymbol $ VarNormalSymbol "**was_return**" TypeAny

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
	addSymbol $ FunctionSymbol "printInt" (RetVar TypeVoid) [RetVar TypeInt]	
	addSymbol $ FunctionSymbol "printDouble" (RetVar TypeVoid) [RetVar TypeDouble]	
	addSymbol $ FunctionSymbol "printString" (RetVar TypeVoid) [RetVar TypeString]	
	addSymbol $ FunctionSymbol "error" (RetVar TypeVoid) []	
	addSymbol $ FunctionSymbol "readInt" (RetVar TypeInt) []	
	addSymbol $ FunctionSymbol "readDouble" (RetVar TypeDouble) []	


addFunctionsDefs :: [PosFunction] -> Context ()

addFunctionsDefs posFuns = do
	add posFuns
	return ()
	where
		add [] = return ()
		add ((Pos _ fun):funs) = do
			addFunctionDef fun
			add funs


addFunctionDef :: Function -> Context ()
addFunctionDef (Function (Pos _ ident) (Pos pos typ) args stms nestedVars nestedFuns) = do
	let argsTypes = getArgs args

	addSymbol $ FunctionSymbol ident (RetVar typ) argsTypes

	where
		getArgs :: [(PosVar, PosType)] -> [RetType]
		getArgs [] = []
		getArgs (((Pos _ var), (Pos _ typ)):args) =
			case var of
				VarNormal ident -> (RetVar typ) : (getArgs args)
				VarArray ident size -> (RetArray typ size) : (getArgs args)
			


checkMainExitsInTable :: Context ()
checkMainExitsInTable = do
	foundSymbol <- findIdentSymbol "main"
	case foundSymbol of
		Nothing -> addMessage $ Error "Nie ma funkcji main()" (0,0)
		Just symbol ->
			case symbol of
				FunctionSymbol i t a -> return ()
				_ -> addMessage $ Error "Nie ma funkcji main()" (0,0)


checkFunctions :: [PosFunction] -> Context ()
checkFunctions posFuns = do
	--map (\(Pos _ fun) -> checkFunction fun) posFuns
	check posFuns
	return ()
	where
		check [] = return ()
		check (fun:funs) = do
			checkFunction fun
			check funs


-- Function

checkFunction :: PosFunction -> Context ()

checkFunction (Pos pos (Function (Pos posI ident) (Pos posR returnTyp) args stms nestedVars nestedFuns)) = do

	pushEmptySymbolTable

	-- let defArgs = map (\((Pos _ _),(Pos _ t)) -> t) args
	-- addSymbol $ FunctionSymbol ident returnTyp defArgs
	addFunctionDef (Function (Pos posI ident) (Pos posR returnTyp) args stms nestedVars nestedFuns)


	-- dodanie zagniezdzonych zmiennych
	addNestedVars nestedVars	

	-- dodanie zagniezdzonych funkcji
	addNestedFuns nestedFuns
	

	-- analiza funkcji
	pushEmptySymbolTable

	addSymbol $ VarNormalSymbol "**return_type**" returnTyp --hack

	-- dodanie argumentow funkcji
	addArgs args

	-- sprawdzenie ciala funkcji
	checkBody stms

	checkWasReturn pos -- hack
	
	popSymbolTable -- tablica od zmiennych i ciala funkcji

	popSymbolTable -- tablica od zagniezdzonych zmiennych i funkcji

	where
		addArgs [] = return ()
		addArgs (((Pos _ var),(Pos _ typ)):args) = do
			case var of
				VarNormal ident -> addSymbol $ VarNormalSymbol ident typ
				VarArray ident size -> addSymbol $ VarArraySymbol ident typ size
			addArgs args

		checkBody [] = return ()
		checkBody (stmt:stms) = do
			checkStmt stmt
			checkBody stms


addNestedVars :: [PosStmt] -> Context ()
addNestedVars [] = return ()
addNestedVars (posStmt:stmts) = do
	-- zmienne zostana dodane do tego srodowiska, czyli srodowiska zagniezdzonego
	checkStmt posStmt
	addNestedVars stmts

addNestedFuns :: [PosFunction] -> Context ()
addNestedFuns [] = return ()
addNestedFuns funs = do
	-- najpierw sprawdzmy kazda zmienna z osobna
	checkFunctions funs
	-- teraz dodajmy definicje zmiennych do srodowiska zagniezdzonego
	addFunctionsDefs funs

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
						VarNormalSymbol ident varTyp  -> 
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
						VarNormalSymbol ident varTyp -> 
							if (RetVar varTyp) == expTyp
								then return ()
								else 
									if expTyp == (RetVar TypeAny)
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

checkDecl typ (Pos pos (Decl (Pos _ (VarNormal ident)) maybeExp)) = do
	foundSymbol <- findSymbolInTopTable ident
	case foundSymbol of
		Nothing -> 
			case maybeExp of
				Nothing -> addSymbol (VarNormalSymbol ident typ) 
				Just posExp -> do
					typExp <- checkExp posExp
					if compatibleAssigTypes (RetVar typ) typExp
						then addSymbol (VarNormalSymbol ident typ) 
						else do
							addMessage (Error ("Blad w deklaracji '" ++ ident ++ "' zle typy " ++ (show typ) ++ " = " ++ (show typExp)) pos)
							addSymbol (VarNormalSymbol ident typ) 
		Just symbol -> do
			addMessage (Error ("Istnieje zmienan o nazwie " ++ ident ++ " w tym bloku") pos)
			addSymbol (VarNormalSymbol ident TypeAny) 

checkDecl typ (Pos pos (Decl (Pos _ (VarArray ident size)) maybeExp)) = do
	foundSymbol <- findSymbolInTopTable ident
	case foundSymbol of
		Nothing -> 
			case maybeExp of
				Nothing -> addSymbol (VarArraySymbol ident typ size)
				Just posExp -> do
						addMessage (Error ("Nie mozna inicjowac wartosciami tablicy przy tworzeniu '" ++ ident ++ "'") pos)
						addSymbol (VarArraySymbol ident typ size) 
		Just symbol -> do
			addMessage (Error ("Istnieje zmienna o nazwie " ++ ident ++ " w tym bloku") pos)
			addSymbol (VarNormalSymbol ident TypeAny) 



-- Assig
checkAssig :: PosAssig -> Context ExpRetType

checkAssig (Pos pos (AssigEq (Pos posA var) posExp)) = do
	expType <- checkExp posExp

	(ident, foundSymbol) <- findVarSymbol var

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie mozna dokonac przypisania, nie ma zadeklarowanej zmiennej o nazwie '" ++ ident ++ "' ") posA)
			addSymbol (VarNormalSymbol ident (typeFromRetType expType)) 
			return $ expType
		Just symbol ->
			case (symbol,var,expType) of
				(VarNormalSymbol sId sTyp,VarNormal uId,RetVar eType) -> -- : a = b
						if compatibleAssigTypes (RetVar sTyp) expType
							then return $ RetVar sTyp
							else do 
									addMessage (Error ("Nie mozna dokonac przypisania na zmienna '" ++ ident ++ "', zle typy ") posA)
									return expType
				(VarArraySymbol sId sTyp sSize,VarNormal uId,RetArray eType eSize) -> -- przypisanie: a[] = b[]
						if compatibleAssigTypes (RetArray sTyp sSize) expType
							then return $ (RetArray sTyp sSize)
							else do 
									addMessage (Error ("Nie mozna dokonac przypisania na zmienna '" ++ ident ++ "', zle typy ") posA)
									return expType
				(VarArraySymbol sId sTyp sSize,VarArray uId uIndex,RetVar eType) -> -- przypisanie: a[1] = b
						if compatibleAssigTypes (RetVar sTyp) expType
							then case uIndex of
									Left index -> return $ RetVar sTyp
									Right indexIdent -> do
												assertExistsVarNormal indexIdent pos
												return $ RetVar sTyp
							else do 
									addMessage (Error ("Nie mozna dokonac przypisania na zmienna '" ++ ident ++ "', zle typy ") posA)
									return expType
				(VarNormalSymbol sId sTyp,VarArray uId uIndex,RetVar eType) -> do
								addMessage (Error ("Zmienna '" ++ ident ++ "' nie jest tablica") posA)
								return expType
				(_,_,_) -> do
								addMessage (Error ("Nie mozna dokonac przypisania") posA)
								return expType




						
checkAssig (Pos pos (AssigInc (Pos _ var))) = do
	(ident, foundSymbol) <- findVarSymbol var

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje zmienna o nazwie '" ++ ident ++ "' ") pos)
			addSymbol (VarNormalSymbol ident TypeInt)
			return $ RetVar TypeInt
		Just symbol ->
			case (symbol,var) of
				(VarNormalSymbol sId sTyp,VarNormal uId) ->
						if sTyp == TypeInt
							then return $ RetVar TypeInt
							else do 
									addMessage (Error ("Nie mozna dokonac dec/inc na '" ++ ident ++ "', zle typy ") pos)
									return $ RetVar TypeInt
				(VarArraySymbol sId sTyp sSize,VarArray uId uSize) ->
						if sTyp == TypeInt
							then return $ RetVar TypeInt
							else do 
									addMessage (Error ("Nie mozna dokonac dec/inc na '" ++ ident ++ "', zle typy ") pos)
									return $ RetVar TypeInt
				(_,_) -> do
								addMessage (Error ("Nie mozna dokonac dec/inc ") pos)
								return $ RetVar TypeInt

checkAssig (Pos pos (AssigDec (Pos _ var))) = do
	checkAssig (Pos pos (AssigInc (Pos pos var)))

-- Exp
checkExp :: PosExp -> Context ExpRetType

checkExp (Pos pos (ExpList exps)) = do
	checkType <- check exps

	return $ RetVar checkType
		where
			check [] = return TypeAny
			check (exp:exps) = do
				checkExp exp
				check exps

checkExp (Pos pos (ExpBinaryOp binOp posExp1 posExp2)) = do
	typ1 <- checkExp posExp1
	typ2 <- checkExp posExp2
	let (Pos pos1 _) = posExp1

	if elem binOp [BoolAnd, BoolOr]
		then if (compatibleBoolTypes typ1) && (compatibleBoolTypes typ2)
				then return $ RetVar TypeBoolean
				else do
					addMessage (Error ((show binOp) ++ " mozna wykonac tylko na typie Boolean") pos1)
					return $ RetVar TypeBoolean
		else if elem binOp [ComperEq, ComperNotEq, RelaLe, RelaLeEq, RelaGt, RelaGtEq]
				then if compatibleCompTypes typ1 typ2
						then return $ RetVar TypeBoolean
						else do
							addMessage (Error ("Zle typy w operacji " ++ (binOpName binOp)) pos1)
							return $ RetVar TypeBoolean
				else case compatibleOpBinTypes typ1 typ2 of
						TypeAny -> do
							addMessage (Error ("Zle typy w operaci " ++ (binOpName binOp)) pos1)
							return $ RetVar TypeAny
						_ -> do
							return $ RetVar (compatibleOpBinTypes typ1 typ2)

checkExp (Pos pos (ExpUnaryOp unOp posExp)) = do
	typ <- checkExp posExp

	if unOp == UnaryNot
		then
			if compatibleBoolTypes typ
				then return typ
				else do
					addMessage (Error ("Typ " ++ (show typ) ++ " niekompatybilny z operacja " ++ (unOpName unOp)) pos)
					return $ RetVar TypeBoolean
		else
			if compatibleArithTypes typ
				then return typ
				else do
					addMessage (Error ("Typ " ++ (show typ) ++ " niekompatybilny z operacja " ++ (unOpName unOp)) pos)
					return $ RetVar TypeAny


checkExp (Pos pos (ExpCallFunc (Pos _ ident) exps)) = do
	foundSymbol <- findIdentSymbol ident
	let argsTypes = fmap (\e -> checkExp e) exps

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje funkcja o nazwie '" ++ ident ++ "' ") pos)
			return $ RetVar TypeAny
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
								
				_ -> do
						addMessage (Error ("Nie istnieje funkcja o nazwie '" ++ ident ++ "' ") pos)
						return $ RetVar TypeAny
		

checkExp (Pos pos (ExpVar (Pos _ var))) = do
	(ident, foundSymbol) <- findVarSymbol var

	case foundSymbol of
		Nothing -> do
			addMessage (Error ("Nie istnieje zmienna o nazwie '" ++ ident ++ "' ") pos)
			return $ RetVar TypeAny
		Just symbol ->
			case (var, symbol) of
				(_, FunctionSymbol ident funTyp args) -> do
						addMessage (Error ("Nie ma zmiennej o nazwie " ++ ident ++ ", ale istnieje taka funkcja") pos)
						return $ RetVar TypeAny
				(VarNormal _, VarNormalSymbol ident typ) -> return $ RetVar typ
				(VarNormal _, VarArraySymbol ident typ size) -> return $ RetArray typ size
				(VarArray _ index, VarNormalSymbol ident typ) -> do
						addMessage (Error ("Zmiennej o nazwie " ++ ident ++ " nie jest tablica") pos)
						return $ RetVar typ
				(VarArray _ index, VarArraySymbol ident typ size) -> do
						case index of
							Left index -> return $ RetVar typ
							Right indexIdent -> do
										assertExistsVarNormal indexIdent pos
										return $ RetVar typ
		

checkExp (Pos pos (ExpCast castType posExp)) = do
	expType <- checkExp posExp

	case expType of
		RetVar typ ->
			case (typ, castType) of
				(TypeInt, ToInt) -> return $ RetVar TypeInt
				(TypeInt, ToDouble) -> return $ RetVar TypeDouble
				(TypeInt, ToBoolean) -> return $ RetVar TypeBoolean
				(TypeBoolean, ToInt) -> return $ RetVar TypeInt
				(TypeBoolean, ToBoolean) -> return $ RetVar TypeBoolean
				(TypeDouble, ToInt) -> return $ RetVar TypeInt
				(TypeDouble, ToDouble) -> return $ RetVar TypeDouble
				(TypeAny, _) -> return $ RetVar TypeAny
				_ -> do 
						addMessage (Error ("Nie mozna dokonac konwersji z '" ++ (show expType) ++ "' do '" ++ (show castType) ++ "'") pos)
						return $ RetVar TypeAny
		RetArray _ _ -> do 
						addMessage (Error ("Nie mozna dokonac rzutowani z tablicy ") pos)
						return $ RetVar TypeAny
				
checkExp (Pos pos (ExpAssig assig)) = do
	checkAssig assig


checkExp (Pos pos (ExpExp posExp)) =
	checkExp posExp

checkExp (Pos pos (ExpInt _)) =
	return $ RetVar TypeInt

checkExp (Pos pos (ExpDouble _)) =
	return $ RetVar TypeDouble

checkExp (Pos pos (ExpString _)) =
	return $ RetVar TypeString

checkExp (Pos pos (ExpTrue)) =
	return $ RetVar TypeBoolean

checkExp (Pos pos (ExpFalse)) =
	return $ RetVar TypeBoolean
