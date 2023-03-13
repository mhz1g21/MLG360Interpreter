{
module Tokens where
}

%wrapper "posn"

$digit = 0-9
$alpha = [a-zA-Z]


tokens :-
$white+         ; 
"="            { \p s -> TEquals p }
"{"            { \p s -> TLeftBrace p }
"}"            { \p s -> TRightBrace p }
"("            { \p s -> TLeftParen p }
")"            { \p s -> TRightParen p }
"."            { \p s -> TDot p }
","            { \p s -> TComma p }
"if"           { \p s -> TIf p }
"else"         { \p s -> TElse p }
"repeat"       { \p s -> TRepeat p }
"print"        { \p s -> TPrint p }
$alpha [$alpha $digit \_ \']*   { \p s -> TIdentifier p s }
$digit+        { \p s -> TNumber p (read s) }

{
data Token =
  TEquals AlexPosn |
  TLeftBrace AlexPosn |
  TRightBrace AlexPosn |
  TLeftParen AlexPosn |
  TRightParen AlexPosn |
  TDot AlexPosn |
  TComma AlexPosn |
  TIf AlexPosn |
  TElse AlexPosn |
  TRepeat AlexPosn |
  TPrint AlexPosn |
  TIdentifier AlexPosn String |
  TNumber AlexPosn Int
  deriving (Eq, Show)
}
