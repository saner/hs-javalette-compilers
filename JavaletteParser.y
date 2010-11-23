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
	","	{ Pos _ TComma }
	";"	{ Pos _ TSemicolon }
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
Function : Type Ident "(" FunctionArgs ")" "{" StmtList "}" { Function (unIdent $2) $1 $4 $7 }
FunctionArgs : FunctionArg { [ $1 ]  }
			 | FunctionArg "," FunctionArgs { $1 : $3 }
			 |	{ [] }
FunctionArg : Type Ident { ((unIdent $2), $1) }
Stmt : StmtComp	{ $1 }
	| StmtDecl { $1 }
	| StmtAssig { $1 }
	| StmtIf { $1 }
	| StmtWhile { $1 }
	| StmtFor { $1 }
	| StmtReturn { $1 }
	| StmtExp { $1 }
StmtComp : "{" StmtList "}"	{ StmtList $2 }
StmtList : Stmt StmtList { $1 : $2 }
		 | { [] }
StmtDecl : Type DeclList ";" { StmtVarsDecl $1 $2 }
DeclList : Decl { [ $1 ] }
		 | Decl "," DeclList { $1 : $3 }
Decl : Ident { Decl (unIdent $1) Nothing }
	 | Ident "=" Exp { Decl (unIdent $1) (Just $3) }
StmtAssig : Assig ";" { StmtAssig $1 }
Assig : Ident "=" Exp { AssigEq (unIdent $1) $3 }
	  | Ident "++" { AssigInc (unIdent $1) }
	  | Ident "--" { AssigDec (unIdent $1) }
StmtIf : "if" "(" Exp ")" Stmt { StmtIf $3 $5 StmtEmpty }
	   | "if" "(" Exp ")" Stmt "else" Stmt { StmtIf $3 $5 $7 }
StmtWhile : "while" "(" Exp ")" Stmt { StmtWhile $3 $5 }
StmtFor : "for" "(" Assig ";" Exp ";" Assig ")" Stmt { StmtFor $3 $5 $7 $9 }
StmtReturn : "return" ";" { StmtReturn Nothing }
		| "return" Exp ";" { StmtReturn (Just $2) }
StmtExp : Exp ";" { StmtExp $1 }

Type : "int" { TypeInt }
	 | "double" { TypeDouble }
	 | "boolean" { TypeBoolean }
	 | "void" { TypeVoid }

Exp : ExpOr { $1 }
ExpOr : ExpAnd { $1 }
	| ExpOr "||" ExpAnd { ExpBinaryOp BoolOr $1 $3 }
ExpAnd : ExpCompe { $1 }
	   | ExpAnd "&&" ExpCompe { ExpBinaryOp BoolAnd $1 $3 }
ExpCompe : ExpRel { $1 }
		| ExpCompe "==" ExpRel { ExpBinaryOp ComperEq $1 $3 }
		| ExpCompe "!=" ExpRel { ExpBinaryOp ComperNotEq $1 $3 }
ExpRel : ExpAddi { $1 }
		| ExpRel "<" ExpAddi { ExpBinaryOp RelaLe $1 $3 }
		| ExpRel ">" ExpAddi { ExpBinaryOp RelaGt $1 $3 }
		| ExpRel "<=" ExpAddi { ExpBinaryOp RelaLeEq $1 $3 }
		| ExpRel ">=" ExpAddi { ExpBinaryOp RelaGtEq $1 $3 }
ExpAddi : ExpMulti { $1 }
		| ExpAddi "+" ExpMulti { ExpBinaryOp AddiPlus $1 $3 }
		| ExpAddi "-" ExpMulti { ExpBinaryOp AddiMinus $1 $3 }
ExpMulti : ExpOneArg { $1 }
		| ExpMulti "*" ExpOneArg { ExpBinaryOp MultiMulti $1 $3 }
		| ExpMulti "/" ExpOneArg { ExpBinaryOp MultiDiv $1 $3 }
		| ExpMulti "%" ExpOneArg { ExpBinaryOp MultiMod $1 $3 }
ExpOneArg : ExpPostfix { $1 }
		| "!" ExpOneArg { ExpUnaryOp UnaryNot $2 }
		| "+" ExpOneArg { ExpUnaryOp UnaryPlus $2 }
		| "-" ExpOneArg { ExpUnaryOp UnaryMinus $2 }
ExpPostfix : ExpSimp { $1 }
		| ExpCallFunc { $1 }
ExpCallFunc : Ident "(" ExpList ")" { ExpCallFunc (unIdent $1) $3 }
ExpList : Exp { [ $1 ] }
		| Exp "," ExpList { $1 : $3 } 
		|  { [] }
ExpSimp : Ident { ExpVar (unIdent $1) }
		| Literal { $1 }
		| "(" Exp ")" { ExpExp $2 }
Literal : IntLiteral { ExpInt (unInt $1) }
		| DoubleLiteral { ExpDouble (unDouble $1) }
		| StringLiteral { ExpString (unString $1) }
		| FalseLiteral { ExpFalse }
		| TrueLiteral { ExpTrue }


{
unWrap :: PosToken -> Token
unWrap (Pos pos token) = token

unIdent :: PosToken -> String
unIdent (Pos p (TIdent str)) = str

unInt :: PosToken -> Int
unInt (Pos p (TIntLiteral i)) = i

unDouble :: PosToken -> Double
unDouble (Pos p (TDoubleLiteral d)) = d

unString :: PosToken -> String
unString (Pos p (TStringLiteral s)) = s


type Ident = String
type IntLiteral = Int
type DoubleLiteral = Double
type StringLiteral = String

parseError :: [PosToken] -> a
parseError token = error $ "Parse error" ++ (show token)

data Type = TypeInt
			| TypeDouble
			| TypeBoolean
			| TypeVoid
			deriving (Show, Eq)

data Program = Program [Function]
			deriving (Show, Eq)
data Function = Function Ident Type [(Ident, Type)] [Stmt]
			deriving (Show, Eq)
data Stmt = StmtList [Stmt]
		 | StmtVarsDecl Type [Decl]
		 | StmtAssig Assig
		 | StmtIf Exp Stmt Stmt
		 | StmtWhile Exp Stmt
		 | StmtFor Assig Exp Assig Stmt
		 | StmtReturn (Maybe Exp)
		 | StmtExp Exp
		 | StmtEmpty
			deriving (Show, Eq)
data Decl = Decl Ident (Maybe Exp)
			deriving (Show, Eq)
data Assig = AssigEq Ident Exp
		  | AssigInc Ident
		  | AssigDec Ident
			deriving (Show, Eq)

data BinaryOp = BoolAnd | BoolOr
				| ComperEq | ComperNotEq
				| RelaLe | RelaLeEq | RelaGt | RelaGtEq
				| AddiPlus | AddiMinus
				| MultiMulti | MultiDiv | MultiMod
				deriving (Show, Eq)

data UnaryOp = UnaryNot | UnaryPlus | UnaryMinus
				deriving (Show, Eq)

data Exp = ExpList [Exp]
		| ExpBinaryOp BinaryOp Exp Exp
		| ExpUnaryOp UnaryOp Exp
		| ExpCallFunc Ident [Exp]
		| ExpVar Ident
		| ExpExp Exp
		| ExpInt Int
		| ExpDouble Double
		| ExpString String
		| ExpTrue
		| ExpFalse
		deriving (Show, Eq)

}   
