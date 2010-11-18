{
module JavaletteLexer where

import Control.Monad
}

%wrapper "monad"

$digit = 0-9
$alpha = [a-zA-Z]
$graphic = $printable # $white

@int = $digit+
@double = $digit+ \. $digit+
@string = \" (\\.|[^\"])* \"
@ident = $alpha [$alpha $digit \_]*

tokens :-
<0> $white+	;
<0> "#".*	;
<0> "//".*	;
<0> "/*" { begin mlcomment }
<mlcomment> "*/" { begin 0 }
<mlcomment> . ;
<mlcomment> \n { skip }
<0> "int"	{ \ai l -> return TInt }
<0> "double"	{ \ai l -> return TDouble }
<0> "boolean"	{ \ai l -> return TBoolean }
<0> "String"	{ \ai l -> return TString }
<0> "void"	{ \ai l -> return TVoid }
<0> "false"	{ \ai l -> return TFalseLiteral }
<0> "true"	{ \ai l -> return TTrueLiteral }
<0> @int { \(_,_,s) l -> return $ TIntLiteral (read (take l s)) }
<0> @double { \(_,_,s) l -> return $ TDoubleLiteral (read (take l s)) }
<0> @string { \(_,_,s) l -> return $ TStringLiteral (init (tail (take l s))) }
<0> "("	{ \ai l -> return TLeftParen }
<0> ")"	{ \ai l -> return TRightParen }
<0> "{"	{ \ai l -> return TLeftBrace }
<0> "}"	{ \ai l -> return TRightBrace }
<0> ","	{ \ai l -> return TComma }
<0> ";"	{ \ai l -> return TSemicolon }
<0> "="	{ \ai l -> return TAssignSign }
<0> "++"	{ \ai l -> return TIncrement }
<0> "--"	{ \ai l -> return TDecrement }
<0> "||"	{ \ai l -> return TOr }
<0> "&&"	{ \ai l -> return TAnd }
<0> "=="	{ \ai l -> return TEqualsSign }
<0> "!="	{ \ai l -> return TNotEqualsSign }
<0> "<"	{ \ai l -> return TLessSign }
<0> ">"	{ \ai l -> return TGreaterSign }
<0> "<="	{ \ai l -> return TLeOrEqSign }
<0> ">="	{ \ai l -> return TGrOrEqSign }
<0> "+"	{ \ai l -> return TPlusSign }
<0> "-"	{ \ai l -> return TMinusSign }
<0> "/"	{ \ai l -> return TDivSign }
<0> "%"	{ \ai l -> return TModSign }
<0> "*"	{ \ai l -> return TMultiSign }
<0> "!"	{ \ai l -> return TNot }
<0> "if"	{ \ai l -> return TIf }
<0> "else"	{ \ai l -> return TElse }
<0> "while"	{ \ai l -> return TWhile }
<0> "for"	{ \ai l -> return TFor }
<0> "return"	{ \ai l -> return TReturn }
<0> @ident { \(_,_,s) l -> return $ TIdent (take l s) }

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
			| TError
			| TEOF
			deriving (Eq, Show)

alexEOF :: Alex Token
alexEOF = return TEOF

{- dziala
javaletteLex :: String -> Either String [Token]
javaletteLex str = runAlex str $ do
	let loop = do
			tok <- alexMonadScan
			case tok of
				TEOF -> return []
				_ -> return []
-}
javaletteLex :: String -> Either String [Token]
javaletteLex str = runAlex str $ do
	let loop = do
			tok <- alexMonadScan
			case tok of
				TEOF -> do 
						   sc <- alexGetStartCode
						   if (sc == mlcomment) 
								then return $ [TFalseLiteral]
								else return $ [TTrueLiteral]
				TError -> do 
						   sc <- alexGetStartCode
						   if (sc == mlcomment) 
								then return $ [TFalseLiteral]
								else return $ [TTrueLiteral]
				_ -> liftM (tok:) loop
	loop
}
