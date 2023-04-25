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
"none"     { \p s -> TNone p}
"not"	      { \p s -> TNot p }
"rotate"          { \p s -> TRotate p }
"scale"           {\ p s -> TScale p }
"reflectX" { \p s -> TReflectX p }
"reflectY" { \p s -> TReflectY p }
"_"        { \p s -> TBlank p }
"and"      { \p s -> TAnd p}
"or"       { \p s -> TOr p}
"subtile"  { \p s -> TSubtile p}
"gibb"     { \p s -> TGibb p}
"lt"       { \p s -> TLessThan p}
"gt"       { \p s -> TGreaterThan p}
"eq"       { \p s -> TIsEqual p}
"neq"      { \p s -> TNotEqual p}
"while"    { \p s -> TWhile p}
"if"       { \p s -> TIf p}
"else"     { \p s -> TElse p}
"width"    { \p s -> TWidth p}
"height"   { \p s -> THeight p}
"print"    { \p s -> TPrint p}
"+"        { \p s -> TAdd p}
"-"        { \p s -> TSub p}
"true"     { \p s -> TBoolean p True}
"false"    { \p s -> TBoolean p False}


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
  |TReflectX AlexPosn
  |TReflectY AlexPosn
  |TBlank AlexPosn
  |TAnd AlexPosn
  |TOr AlexPosn
  |TSubtile AlexPosn
  |TGibb AlexPosn
  |TLessThan AlexPosn
  |TGreaterThan AlexPosn
  |TIsEqual AlexPosn
  |TNotEqual AlexPosn
  |TWhile AlexPosn
  |TIf AlexPosn
  |TElse AlexPosn
  |TWidth AlexPosn
  |THeight AlexPosn
  |TPrint AlexPosn
  |TAdd AlexPosn
  |TSub AlexPosn
  |TBoolean AlexPosn Bool
  |TNone AlexPosn
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
tokenPosn (TReflectX (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TReflectY (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TSubtile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TGibb (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TLessThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TGreaterThan (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TIsEqual (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TNotEqual (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TWidth (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (THeight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TPrint(AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TSub (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TBoolean (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TNone (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
