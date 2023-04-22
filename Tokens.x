{
module Tokens where
}

%wrapper "posn"

$digit = 0-9
$alpha = [a-zA-Z]


tokens :-
$white+         ; 
":)".*            ; 
"="            { \p s -> TEquals p }
"<<"            { \p s -> TImport p }
">>"            { \p s -> TExport p }
"{"            { \p s -> TLeftBrace p }
"}"            { \p s -> TRightBrace p }
"("            { \p s -> TLeftParen p }
")"            { \p s -> TRightParen p }
"repeat"       { \p s -> TRepeat p }
"joinH"         { \p s -> TJoinH p   }
"joinV"         { \p s -> TJoinV p   }
";"           { \p s -> TSemiColon p  }
"not"	      { \p s -> TNot p }
"rotate"          { \p s -> TRotate p }
"scale"           {\ p s -> TScale p }

$alpha [$alpha $digit \_ \']*   { \p s -> TIdentifier p s }
$digit+        { \p s -> TNumber p (read s) }

{
data Token =
  TEquals AlexPosn 
  |TLeftBrace AlexPosn 
  |TRightBrace AlexPosn 
  |TLeftParen AlexPosn 
  |TRightParen AlexPosn 
  |TRepeat AlexPosn 
  |TIdentifier AlexPosn String   
  |TNumber AlexPosn Int 
  |TJoinH AlexPosn     
  |TJoinV AlexPosn    
  |TSemiColon AlexPosn 
  |TImport AlexPosn 
  |TExport AlexPosn 
  |TRotate AlexPosn 
  |TScale AlexPosn  
  |TNot AlexPosn
  deriving (Eq, Show)

tokenPosn :: Token -> String 
tokenPosn (TNumber  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TIdentifier  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TEquals  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLeftParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRightParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRightBrace (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLeftBrace (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TRepeat (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TJoinH (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TJoinV (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TSemiColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TImport (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TExport (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TScale (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
