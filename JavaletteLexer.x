{
module JavaletteLexer where
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]
$graphic = $printable # $white

@int = $digit+
@double = $digit+ \. $digit+
@string = \" (\\.|[^\"])* \"
@ident = $alpha [$alpha $digit \_]*

tokens :-
	$white+	;
	"#".*	;
	"//".*	;
	"/*".*	;
	"int"	{ \s -> TInt }
	"double"	{ \s -> TDouble }
	"boolean"	{ \s -> TBoolean }
	"String"	{ \s -> TString }
	"void"	{ \s -> TVoid }
	"false"	{ \s -> TFalseLiteral }
	"true"	{ \s -> TTrueLiteral }
	@int { \s -> TIntLiteral (read s) }
	@double { \s -> TDoubleLiteral (read s) }
	@string { \s -> TStringLiteral (init (tail s)) }
	"("	{ \s -> TLeftParen }
	")"	{ \s -> TRightParen }
	"{"	{ \s -> TLeftBrace }
	"}"	{ \s -> TRightBrace }
	","	{ \s -> TComma }
	";"	{ \s -> TSemicolon }
	"="	{ \s -> TAssignSign }
	"++"	{ \s -> TIncrement }
	"--"	{ \s -> TDecrement }
	"||"	{ \s -> TOr }
	"&&"	{ \s -> TAnd }
	"=="	{ \s -> TEqualsSign }
	"!="	{ \s -> TNotEqualsSign }
	"<"	{ \s -> TLessSign }
	">"	{ \s -> TGreaterSign }
	"<="	{ \s -> TLeOrEqSign }
	">="	{ \s -> TGrOrEqSign }
	"+"	{ \s -> TPlusSign }
	"-"	{ \s -> TMinusSign }
	"/"	{ \s -> TDivSign }
	"%"	{ \s -> TModSign }
	"*"	{ \s -> TMultiSign }
	"!"	{ \s -> TNot }
	"if"	{ \s -> TIf }
	"else"	{ \s -> TElse }
	"while"	{ \s -> TWhile }
	"for"	{ \s -> TFor }
	"return"	{ \s -> TReturn }
	@ident { \s -> TIdent s }

{
data Token = TInt
			| TDouble
			| TBoolean
			| TString
			| TVoid
			| TFalseLiteral
			| TTrueLiteral
			| TIntLiteral Int
			| TDoubleLiteral Double
			| TBooleanLiteral Bool
			| TStringLiteral String
			| TIdent String
			| TLeftParen
			| TRightParen
			| TLeftBrace
			| TRightBrace
			| TComma
			| TSemicolon
			| TAssignSign
			| TIncrement
			| TDecrement
			| TOr
			| TAnd
			| TEqualsSign
			| TNotEqualsSign
			| TLessSign
			| TGreaterSign
			| TLeOrEqSign
			| TGrOrEqSign
			| TPlusSign
			| TMinusSign
			| TDivSign
			| TModSign
			| TMultiSign
			| TNot
			| TIf
			| TElse
			| TWhile
			| TFor
			| TReturn
			deriving (Eq, Show)

}
