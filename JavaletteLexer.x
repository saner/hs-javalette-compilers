{
module JavaletteLexer where

import Control.Monad
}

%wrapper "monadUserState"

$digit = 0-9
$alpha = [a-zA-Z]
$graphic = $printable # $white

@int = $digit+
@double = $digit+ \. $digit+
@string = \" (\\.|[^\"])* \"
@ident = $alpha [$alpha $digit \_]*

tokens :-
<0> $white+ ;
<0> "#".*   ;
<0> "//".*  ;
<0> "/*" { begin mlcomment }
<mlcomment> "*/" { begin 0 }
<mlcomment> . ;
<mlcomment> \n { skip }
<0> "int"   { mkToken TInt }
<0> "double"    { mkToken TDouble }
<0> "boolean"   { mkToken TBoolean }
<0> "String"    { mkToken TString }
<0> "void"  { mkToken TVoid }
<0> "false" { mkToken TFalseLiteral }
<0> "true"  { mkToken TTrueLiteral }
<0> @int { mkTokenArg (TIntLiteral . read) }
<0> @double { mkTokenArg (TDoubleLiteral . read) }
<0> @string { mkTokenArg (TStringLiteral . init . tail) }
<0> "(" { mkToken TLeftParen }
<0> ")" { mkToken TRightParen }
<0> "[" { mkToken TLeftSqBracket }
<0> "]" { mkToken TRightSqBracket }
<0> "{" { mkToken TLeftBrace }
<0> "}" { mkToken TRightBrace }
<0> "," { mkToken TComma }
<0> ";" { mkToken TSemicolon }
<0> ":" { mkToken TColon }
<0> "=" { mkToken TAssignSign }
<0> "++"    { mkToken TIncrement }
<0> "--"    { mkToken TDecrement }
<0> "||"    { mkToken TOr }
<0> "&&"    { mkToken TAnd }
<0> "=="    { mkToken TEqualsSign }
<0> "!="    { mkToken TNotEqualsSign }
<0> "<" { mkToken TLessSign }
<0> ">" { mkToken TGreaterSign }
<0> "<="    { mkToken TLeOrEqSign }
<0> ">="    { mkToken TGrOrEqSign }
<0> "+" { mkToken TPlusSign }
<0> "-" { mkToken TMinusSign }
<0> "/" { mkToken TDivSign }
<0> "%" { mkToken TModSign }
<0> "*" { mkToken TMultiSign }
<0> "!" { mkToken TNot }
<0> "if"    { mkToken TIf }
<0> "else"  { mkToken TElse }
<0> "while" { mkToken TWhile }
<0> "for"   { mkToken TFor }
<0> "return"    { mkToken TReturn }
<0> @ident { mkTokenArg TIdent }

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
            | TLeftSqBracket
            | TRightSqBracket
            | TLeftBrace
            | TRightBrace
            | TComma
            | TSemicolon
            | TColon
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
            | TError String
            | TEOF
            deriving (Eq, Show)



data Pos a = Pos (Int, Int) a
                deriving (Eq, Show)
type PosToken = Pos Token

mkToken :: Token -> AlexInput -> Int -> Alex PosToken
mkToken token (AlexPn _ line col, _, str) len = 
    return $ Pos (line, col) $ token

mkTokenArg :: (String -> Token) -> AlexInput -> Int -> Alex PosToken
mkTokenArg token (AlexPn _ line col, _, str) len = 
    return $ Pos (line, col) $ token (take len str)

alexEOF = do
        (AlexPn _ line col, _, _) <- alexGetInput
        return $ Pos (line,col) TEOF

type LexerError = Pos String
data AlexUserState = AlexUserState { errors :: [LexerError] }

alexInitUserState :: AlexUserState
alexInitUserState = AlexUserState { errors = [] }

lexError :: AlexInput -> Int -> Alex PosToken
lexError input len =
             do let error = Pos (line, col) $ "Blad znak: " ++ (take len str)
                    (AlexPn _ line col, _, str) = input
                addError error
                skip input len

addError :: LexerError -> Alex ()
addError err = Alex $ \alx ->
            let usr_st = alex_ust alx
                errs = errors usr_st
                alx' = alx { alex_ust = usr_st { errors = (err:errs) } }
            in Right (alx', ())

getErrors :: Alex [LexerError]
getErrors = Alex $ \alx -> Right(alx, errors $ alex_ust alx)

javaletteLex :: String -> Either String ([PosToken], [LexerError])
javaletteLex str = runAlex str $ do
                    tokens <- getTokens
                    errs <- getErrors
                    return (tokens, errs)
    where getTokens = do
            scan@(Pos pos token) <- alexMonadScan
            case token of
                TEOF -> do sc <- alexGetStartCode
                           if sc == mlcomment 
                                then do addError $ Pos pos "niezamkniety komentarz"
                                        return []
                                else return []
                _ -> liftM (scan:) getTokens
}
