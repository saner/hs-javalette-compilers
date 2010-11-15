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
	"String"	{ TString }
	"void"	{ TVoid }
	"false"	{ TFalseLiteral }
	"true"	{ TTrueLiteral }
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
	"printInt"	{ TPredefFunPrintInt }
	"printDouble"	{ TPredefFunPrintDouble }
	"printString"	{ TPredefFunPrintString }
	"error"	{ TPredefFunError }
	"readInt"	{ TPredefFunReadInt }
	"readDouble"	{ TPredefFunReadDouble }
	Ident { TIdent $$ }
%%

Program : FunctionList { Program $1 }
FunctionList : Function FunctionList { $1 : $2 }
			 |	{ [] } 
Function : Type Ident "(" FunctionArgs ")" StmtComp { Function $2 $1 $4 $6 }
FunctionArgs : FunctionArg { [ $1 ]  }
			 | FunctionArg "," FunctionArgs { $1 : $3 }
			 |	{ [] }
FunctionArg : Type Ident { FunctionArg $1 $2 }
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
Decl : Ident { Decl $1 ExpEmpty  }
	 | Ident "=" Exp { Decl $1 $3 }
StmtAssig : Assig ";" { StmtAssig $1 }
Assig : Ident "=" Exp { AssigEq $1 $3 }
	  | Ident "++" { AssigInc $1 }
	  | Ident "--" { AssigDec $1 }
StmtIf : "if" "(" Exp ")" Stmt { StmtIf $3 $5 StmtEmpty }
	   | "if" "(" Exp ")" Stmt "else" Stmt { StmtIf $3 $5 $7 }
StmtWhile : "while" "(" Exp ")" Stmt { StmtWhile $3 $5 }
StmtFor : "for" "(" Assig ";" Exp ";" Assig ")" Stmt { StmtFor $3 $5 $7 $9 }
StmtReturn : "return" ";" { StmtReturn ExpEmpty }
		| "return" Exp ";" { StmtReturn $2 }
StmtExp : Exp ";" { StmtExp $1 }

Type : "int" { TypeInt }
	 | "double" { TypeDouble }
	 | "boolean" { TypeBoolean }
	 | "void" { TypeVoid }

Exp : ExpOr { $1 }
ExpOr : ExpAnd { $1 }
	| ExpOr "||" ExpAnd { ExpBin BinOr $1 $3 }
ExpAnd : ExpComp { $1 }
	   | ExpAnd "&&" ExpComp { ExpBin BinAnd $1 $3 }
ExpComp : ExpRel { $1 }
		| ExpComp "==" ExpRel { ExpComp CompEq $1 $3 }
		| ExpComp "!=" ExpRel { ExpComp CompNotEq $1 $3 }
ExpRel : ExpAddi { $1 }
		| ExpRel "<" ExpAddi { ExpRel RelLe $1 $3 }
		| ExpRel ">" ExpAddi { ExpRel RelGt $1 $3 }
		| ExpRel "<=" ExpAddi { ExpRel RelLeEq $1 $3 }
		| ExpRel ">=" ExpAddi { ExpRel RelGtEq $1 $3 }
ExpAddi : ExpMulti { $1 }
		| ExpAddi "+" ExpMulti { ExpAddi AddiPlus $1 $3 }
		| ExpAddi "-" ExpMulti { ExpAddi AddiMinus $1 $3 }
ExpMulti : ExpOneArg { $1 }
		| ExpMulti "*" ExpOneArg { ExpMulti MultiMulti $1 $3 }
		| ExpMulti "/" ExpOneArg { ExpMulti MultiDiv $1 $3 }
		| ExpMulti "%" ExpOneArg { ExpMulti MultiMod $1 $3 }
ExpOneArg : ExpPostfix { $1 }
		| "!" ExpOneArg { ExpOneArg OneArgNot }
		| "+" ExpOneArg { ExpOneArg OneArgPlus }
		| "-" ExpOneArg { ExpOneArg OneArgMinus }
ExpPostfix : ExpSimp { $1 }
		| ExpCallFunc { $1 }
ExpCallFunc : Ident "(" ")" { ExpCallFunc $1 [] } 
		   | Ident "(" ExpList ")" { ExpCallFunc $1 $3 }
ExpList : Exp "," ExpList { $1 : $3 }
		|  { [] }
ExpSimp : Ident { ExpVar $1 }
		| Literal { $1 }
		| "(" Exp ")" { ExpExp $2 }
Literal : IntLiteral { ExpInt $1 }
		| DoubleLiteral { ExpDouble $1 }
		| StringLiteral { ExpString $1 }

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
data Function = Function Ident Type [FunctionArg] Stmt
			deriving (Show, Eq)
data FunctionArg = FunctionArg Type Ident
			deriving (Show, Eq)
data Stmt = StmtList [Stmt]
		 | StmtVarsDecl Type [Decl]
		 | StmtAssig Assig
		 | StmtIf Exp Stmt Stmt
		 | StmtWhile Exp Stmt
		 | StmtFor Assig Exp Assig Stmt
		 | StmtReturn Exp
		 | StmtExp Exp
		 | StmtEmpty
			deriving (Show, Eq)
data Decl = Decl Ident Exp
			deriving (Show, Eq)
data Assig = AssigEq Ident Exp
		  | AssigInc Ident
		  | AssigDec Ident
			deriving (Show, Eq)

data Bin = BinAnd | BinOr
		deriving (Show, Eq)
data Comp = CompEq | CompNotEq
		deriving (Show, Eq)
data Rel = RelLe | RelLeEq | RelGt | RelGtEq
		deriving (Show, Eq)
data Addi = AddiPlus | AddiMinus
		deriving (Show, Eq)
data Multi = MultiMulti | MultiDiv | MultiMod
		deriving (Show, Eq)
data OneArg = OneArgNot | OneArgPlus | OneArgMinus
		deriving (Show, Eq)

data Exp = ExpEmpty
		| ExpList [Exp]
		| ExpBin Bin Exp Exp
		| ExpComp Comp Exp Exp
		| ExpRel Rel Exp Exp
		| ExpAddi Addi Exp Exp
		| ExpMulti Multi Exp Exp
		| ExpOneArg OneArg Exp
		| ExpCallFunc Ident [Exp]
		| ExpVar Ident
		| ExpExp Exp
		| ExpInt Int
		| ExpDouble Double
		| ExpString String
		deriving (Show, Eq)

}   
