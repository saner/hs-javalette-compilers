{
module JavaletteParser where
import JavaletteLexer
}

%name javaletteParse
%tokentype { PosToken }
%error { parseError }


%token
	"int"	{ Pos _ TInt }
	"double"	{ Pos _ TDouble }
	"boolean"	{ Pos _ TBoolean }
	"void"	{ Pos _ TVoid }
	FalseLiteral { Pos _ TFalseLiteral }
	TrueLiteral	{ Pos _ TTrueLiteral }
	IntLiteral { Pos _ (TIntLiteral _) }
	DoubleLiteral { Pos _ (TDoubleLiteral _) }
	StringLiteral { Pos _ (TStringLiteral _) }
	"("	{ Pos _ TLeftParen }
	")"	{ Pos _ TRightParen }
	"{"	{ Pos _ TLeftBrace }
	"}"	{ Pos _ TRightBrace }
	"["	{ Pos _ TLeftSqBracket }
	"]"	{ Pos _ TRightSqBracket }
	","	{ Pos _ TComma }
	";"	{ Pos _ TSemicolon }
	":"	{ Pos _ TColon }
	"="	{ Pos _ TAssignSign }
	"++"	{ Pos _ TIncrement }
	"--"	{ Pos _ TDecrement }
	"||"	{ Pos _ TOr }
	"&&"	{ Pos _ TAnd }
	"=="	{ Pos _ TEqualsSign }
	"!="	{ Pos _ TNotEqualsSign }
	"<"	{ Pos _ TLessSign }
	">"	{ Pos _ TGreaterSign }
	"<="	{ Pos _ TLeOrEqSign }
	">="	{ Pos _ TGrOrEqSign }
	"+"	{ Pos _ TPlusSign }
	"-"	{ Pos _ TMinusSign }
	"/"	{ Pos _ TDivSign }
	"%"	{ Pos _ TModSign }
	"*"	{ Pos _ TMultiSign }
	"!"	{ Pos _ TNot }
	"if"	{ Pos _ TIf }
	"else"	{ Pos _ TElse }
	"while"	{ Pos _ TWhile }
	"for"	{ Pos _ TFor }
	"return"	{ Pos _ TReturn }
	Ident { Pos _ (TIdent _) }
%%

Program : FunctionList { Program $1 }
FunctionList : Function FunctionList { $1 : $2 }
			 |	{ [] } 
Function : Type Ident "(" FunctionArgs ")" "[" StmtDeclList ":" FunctionList "]" "{" StmtList "}" { Pos (getPos $1) $ Function (unIdent $2) $1 $4 $12 $7 $9 }
		 | Type Ident "(" FunctionArgs ")" "{" StmtList "}" { Pos (getPos $1) $ Function (unIdent $2) $1 $4 $7 [] [] }
FunctionArgs : FunctionArg { [ $1 ]  }
			 | FunctionArg "," FunctionArgs { $1 : $3 }
			 |	{ [] }
FunctionArg : Type Var { ($2, $1) }
Stmt : StmtComp	{ $1 }
	| StmtDecl { $1 }
	| StmtAssig { $1 }
	| StmtIf { $1 }
	| StmtWhile { $1 }
	| StmtFor { $1 }
	| StmtReturn { $1 }
	| StmtExp { $1 }
StmtComp : "{" StmtList "}"	{ Pos (getPos $1) $ StmtList $2 }
StmtList : Stmt StmtList { $1 : $2 }
		 | { [] }
StmtDecl : Type DeclList ";" { Pos (getPos $1) $ StmtVarsDecl $1 $2 }
StmtDeclList :  { [] }
			 | StmtDecl StmtDeclList { $1 : $2 }
DeclList : Decl { [ $1 ] }
		 | Decl "," DeclList { $1 : $3 }
Decl : Var { Pos (getPos $1) $ Decl $1 Nothing }
	 | Var "=" Exp { Pos (getPos $1) $ Decl $1 (Just $3) }
StmtAssig : ExpAssig ";" { Pos (getPos $1) $ StmtAssig $1 }
StmtIf : "if" "(" Exp ")" Stmt { Pos (getPos $1) $ StmtIf $3 $5 $ Pos (getPos $1) StmtEmpty }
	   | "if" "(" Exp ")" Stmt "else" Stmt { Pos (getPos $1) $ StmtIf $3 $5 $7 }
StmtWhile : "while" "(" Exp ")" Stmt { Pos (getPos $1) $ StmtWhile $3 $5 }
StmtFor : "for" "(" Assig ";" Exp ";" Assig ")" Stmt { Pos (getPos $1) $ StmtFor $3 $5 $7 $9 }
StmtReturn : "return" ";" { Pos (getPos $1) $ StmtReturn Nothing }
		| "return" Exp ";" { Pos (getPos $1) $ StmtReturn (Just $2) }
StmtExp : Exp ";" { Pos (getPos $1) $ StmtExp $1 }

Type : "int" { Pos (getPos $1) TypeInt }
	 | "double" { Pos (getPos $1) TypeDouble }
	 | "boolean" { Pos (getPos $1) TypeBoolean }
	 | "void" { Pos (getPos $1) TypeVoid }

Exp : ExpOr { $1 } 
	| ExpAssig { Pos (getPos $1) $ ExpAssig $1 }
ExpAssig : Assig { $1 }
Assig : Var "=" ExpAddi { Pos (getPos $1) $ AssigEq $1 $3 }
	  | Var "++" { Pos (getPos $1) $ AssigInc $1 }
	  | Var "--" { Pos (getPos $1) $ AssigDec $1 }
ExpOr : ExpAnd { $1 }
	| ExpOr "||" ExpAnd { Pos (getPos $2) $ ExpBinaryOp BoolOr $1 $3 }
ExpAnd : ExpCompe { $1 }
	   | ExpAnd "&&" ExpCompe { Pos (getPos $2) $ ExpBinaryOp BoolAnd $1 $3 }
ExpCompe : ExpRel { $1 }
		| ExpCompe "==" ExpRel { Pos (getPos $2) $ ExpBinaryOp ComperEq $1 $3 }
		| ExpCompe "!=" ExpRel { Pos (getPos $2) $ ExpBinaryOp ComperNotEq $1 $3 }
ExpRel : ExpAddi { $1 }
		| ExpRel "<" ExpAddi { Pos (getPos $2) $ ExpBinaryOp RelaLe $1 $3 }
		| ExpRel ">" ExpAddi { Pos (getPos $2) $ ExpBinaryOp RelaGt $1 $3 }
		| ExpRel "<=" ExpAddi { Pos (getPos $2) $ ExpBinaryOp RelaLeEq $1 $3 }
		| ExpRel ">=" ExpAddi { Pos (getPos $2) $ ExpBinaryOp RelaGtEq $1 $3 }
ExpAddi : ExpMulti { $1 }
		| ExpAddi "+" ExpMulti { Pos (getPos $2) $ ExpBinaryOp AddiPlus $1 $3 }
		| ExpAddi "-" ExpMulti { Pos (getPos $2) $ ExpBinaryOp AddiMinus $1 $3 }
ExpMulti : ExpOneArg { $1 }
		| ExpMulti "*" ExpOneArg { Pos (getPos $2) $ ExpBinaryOp MultiMulti $1 $3 }
		| ExpMulti "/" ExpOneArg { Pos (getPos $2) $ ExpBinaryOp MultiDiv $1 $3 }
		| ExpMulti "%" ExpOneArg { Pos (getPos $2) $ ExpBinaryOp MultiMod $1 $3 }
ExpOneArg : ExpOneArgNot { $1 }
		| "+" ExpOneArg { Pos (getPos $1) $ ExpUnaryOp UnaryPlus $2 }
		| "-" ExpOneArg { Pos (getPos $1) $ ExpUnaryOp UnaryMinus $2 }
ExpOneArgNot : ExpPostfix { $1 }
		| "!" ExpPostfix { Pos (getPos $1) $ ExpUnaryOp UnaryNot $2 }
ExpPostfix : ExpSimp { $1 }
		| ExpCallFunc { $1 }
ExpCallFunc : Ident "(" ExpList ")" { Pos (getPos $1) $ ExpCallFunc (unIdent $1) $3 }
ExpList : Exp { [ $1 ] }
		| Exp "," ExpList { $1 : $3 } 
		|  { [] }
ExpSimp : Var { Pos (getPos $1) $ ExpVar $1 }
		| Literal { $1 }
		| "(" Exp ")" { Pos (getPos $1) $ ExpExp $2 }
		| "(" "boolean" ")" ExpOneArgNot { Pos (getPos $1) $ ExpCast ToBoolean $4 }
		| "(" "int" ")" ExpOneArgNot { Pos (getPos $1) $ ExpCast ToInt $4 }
		| "(" "double" ")" ExpOneArgNot { Pos (getPos $1) $ ExpCast ToDouble $4 }
Literal : IntLiteral { Pos (getPos $1) $ ExpInt (unInt $1) }
		| DoubleLiteral { Pos (getPos $1) $ ExpDouble (unDouble $1) }
		| StringLiteral { Pos (getPos $1) $ ExpString (unString $1) }
		| FalseLiteral { Pos (getPos $1) ExpFalse }
		| TrueLiteral { Pos (getPos $1) ExpTrue }
Var : Ident { Pos (getPos $1) $ VarNormal (unIdentAndPos $1) }
	| Ident "[" IntLiteral "]" { Pos (getPos $1) $ VarArray (unIdentAndPos $1) (Left (unInt $3))  }
	| Ident "[" Ident "]" { Pos (getPos $1) $ VarArray (unIdentAndPos $1) (Right (unIdentAndPos $3))  }


{
unWrap :: PosToken -> Token
unWrap (Pos pos token) = token

unIdent :: PosToken -> PosIdent
unIdent (Pos p (TIdent str)) = Pos p str

unIdentAndPos :: PosToken -> Ident
unIdentAndPos (Pos p (TIdent str)) = str

unInt :: PosToken -> Int
unInt (Pos p (TIntLiteral i)) = i

unDouble :: PosToken -> Double
unDouble (Pos p (TDoubleLiteral d)) = d

unString :: PosToken -> String
unString (Pos p (TStringLiteral s)) = s

getPos (Pos p t) = p



type Ident = String
type PosIdent = Pos Ident

type IntLiteral = Int
type PosIntLiteral = Pos IntLiteral

type DoubleLiteral = Double
type PosDobuleLiteral = Pos DoubleLiteral

type StringLiteral = String
type PosStringLiteral = Pos StringLiteral

data Type = TypeInt
			| TypeDouble
			| TypeBoolean
			| TypeVoid
			| TypeString
			| TypeAny
			deriving (Show, Eq)
type PosType = Pos Type

data Program = Program [PosFunction]
			deriving (Show, Eq)

data Function = Function PosIdent PosType [(PosVar, PosType)] [PosStmt] [PosStmt] [PosFunction]
			deriving (Show, Eq)
type PosFunction = Pos Function

data Stmt = StmtList [PosStmt]
		 | StmtVarsDecl PosType [PosDecl]
		 | StmtAssig PosAssig
		 | StmtIf PosExp PosStmt PosStmt
		 | StmtWhile PosExp PosStmt
		 | StmtFor PosAssig PosExp PosAssig PosStmt
		 | StmtReturn (Maybe PosExp)
		 | StmtExp PosExp
		 | StmtEmpty
			deriving (Show, Eq)
type PosStmt = Pos Stmt

data Decl = Decl PosVar (Maybe PosExp)
			deriving (Show, Eq)
type PosDecl = Pos Decl

data BinaryOp = BoolAnd | BoolOr
				| ComperEq | ComperNotEq
				| RelaLe | RelaLeEq | RelaGt | RelaGtEq
				| AddiPlus | AddiMinus
				| MultiMulti | MultiDiv | MultiMod
				deriving (Show, Eq)

data UnaryOp = UnaryNot | UnaryPlus | UnaryMinus
				deriving (Show, Eq)

data CastType = ToInt | ToDouble | ToBoolean
				deriving (Show, Eq)

data Exp = ExpList [PosExp]
		| ExpBinaryOp BinaryOp PosExp PosExp
		| ExpUnaryOp UnaryOp PosExp
		| ExpCallFunc PosIdent [PosExp]
		| ExpVar PosVar
		| ExpExp PosExp
		| ExpInt Int
		| ExpDouble Double
		| ExpString String
		| ExpTrue
		| ExpFalse
		| ExpCast CastType PosExp -- do castowania, zawiera typ konwersji oraz wyrazenie podlegajace jej
		| ExpAssig PosAssig
		deriving (Show, Eq)

type PosExp = Pos Exp

data Assig = AssigEq PosVar PosExp
		| AssigInc PosVar
		| AssigDec PosVar
		deriving (Show, Eq)

type PosAssig = Pos Assig


data Var = VarNormal Ident
		| VarArray Ident (Either Int Ident)
		deriving (Show, Eq)

type PosVar = Pos Var


-- obsluga bledow

tokenString :: Token -> String
tokenString token =
	case token of
		--TInt -> "int" pojawia sie blad parsowania w Haskellu bez powodu
        TDouble -> "double"
        TBoolean -> "boolean"
        TString -> "string"
        TVoid -> "void"
        TFalseLiteral -> "false"
        TTrueLiteral -> "true"
        TIntLiteral i -> "int " ++ (show i)
        TDoubleLiteral d -> "double " ++ (show d)
        TBooleanLiteral b -> "boolean " ++ (show b)
        TStringLiteral s -> "string " ++ (show s) 
        TIdent ident -> "identyfikator " ++ (show ident) 
        TLeftParen -> "("
        TRightParen ->  ")"
        TLeftSqBracket -> "["
        TRightSqBracket ->  "]"
        TLeftBrace -> "{"
        TRightBrace -> "}"
        TComma -> ","
        TSemicolon -> ";"
        TAssignSign -> "="
        TIncrement -> "++"
        TDecrement -> "--"
        TOr -> "||"
        TAnd -> "&&"
        TEqualsSign -> "=="
        TNotEqualsSign -> "!="
        TLessSign -> "<"
        TGreaterSign -> ">"
        TLeOrEqSign -> "<="
        TGrOrEqSign -> ">="
        TPlusSign -> "+"
        TMinusSign -> "-"
        TDivSign -> "/"
        TModSign -> "%"
        TMultiSign -> "*"
        TNot -> "!"
        TIf -> "if"
        TElse -> "else"
        TWhile -> "while"
        TFor -> "for"
        TReturn -> "return"
        TError e -> "error " ++ (show e)
        TEOF ->  "eof"

parseError :: [PosToken] -> a
parseError ((Pos (pos_l, pos_k) token):_) = do
	let tokenStr = tokenString token
	error $ "Blad parsowania w linii " ++ (show pos_l) ++
			" w kolumnie " ++ (show pos_k) ++ 
			" nieoczekiwany symbol: " ++ tokenStr



}   
