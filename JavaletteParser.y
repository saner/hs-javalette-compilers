{
module JavaletteParser where
import JavaletteLexer
}

%name javaletteParse
%tokentype { Token }
%error { parseError }


%token
	"int"	{ TInt }
	"double"	{ TDouble }
	"boolean"	{ TBoolean }
	"void"	{ TVoid }
	FalseLiteral { TFalseLiteral }
	TrueLiteral	{ TTrueLiteral }
	IntLiteral { TIntLiteral $$ }
	DoubleLiteral { TDoubleLiteral $$ }
	StringLiteral { TStringLiteral $$ }
	"("	{ TLeftParen }
	")"	{ TRightParen }
	"{"	{ TLeftBrace }
	"}"	{ TRightBrace }
	","	{ TComma }
	";"	{ TSemicolon }
	"="	{ TAssignSign }
	"++"	{ TIncrement }
	"--"	{ TDecrement }
	"||"	{ TOr }
	"&&"	{ TAnd }
	"=="	{ TEqualsSign }
	"!="	{ TNotEqualsSign }
	"<"	{ TLessSign }
	">"	{ TGreaterSign }
	"<="	{ TLeOrEqSign }
	">="	{ TGrOrEqSign }
	"+"	{ TPlusSign }
	"-"	{ TMinusSign }
	"/"	{ TDivSign }
	"%"	{ TModSign }
	"*"	{ TMultiSign }
	"!"	{ TNot }
	"if"	{ TIf }
	"else"	{ TElse }
	"while"	{ TWhile }
	"for"	{ TFor }
	"return"	{ TReturn }
	Ident { TIdent $$ }
%%

Program : FunctionList { Program $1 }
FunctionList : Function FunctionList { $1 : $2 }
			 |	{ [] } 
Function : Type Ident "(" FunctionArgs ")" "{" StmtList "}" { Function $2 $1 $4 $7 }
FunctionArgs : FunctionArg { [ $1 ]  }
			 | FunctionArg "," FunctionArgs { $1 : $3 }
			 |	{ [] }
FunctionArg : Type Ident { ($2, $1) }
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
Decl : Ident { Decl $1 Nothing }
	 | Ident "=" Exp { Decl $1 (Just $3) }
StmtAssig : Assig ";" { StmtAssig $1 }
Assig : Ident "=" Exp { AssigEq $1 $3 }
	  | Ident "++" { AssigInc $1 }
	  | Ident "--" { AssigDec $1 }
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
ExpCallFunc : Ident "(" ExpList ")" { ExpCallFunc $1 $3 }
ExpList : Exp { [ $1 ] }
		| Exp "," ExpList { $1 : $3 } 
		|  { [] }
ExpSimp : Ident { ExpVar $1 }
		| Literal { $1 }
		| "(" Exp ")" { ExpExp $2 }
Literal : IntLiteral { ExpInt $1 }
		| DoubleLiteral { ExpDouble $1 }
		| StringLiteral { ExpString $1 }
		| FalseLiteral { ExpFalse }
		| TrueLiteral { ExpTrue }

{
type Ident = String
type IntLiteral = Int
type DoubleLiteral = Double
type StringLiteral = String

parseError :: [Token] -> a
parseError _ = error "Parse error"

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
