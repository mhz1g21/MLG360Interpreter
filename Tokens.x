{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+         ; 
  "//".*        ; 
   Tile  { \p s -> TTile p} 
   On    { \p s -> TOn p}
   Off   { \p s -> TOff p}
   \[          { \p s -> TLList p}
   \]          { \p s -> TRList p}
   \,          { \p s -> TComma p}
   $alpha [$alpha $digit \_ \']*   { \p s -> TokenVar p s } 
{ 
-- Each action has type :: String -> Token 
-- The token type: 
data Token = 
  TTile AlexPosn            | 
  TOn AlexPosn              | 
  TOff AlexPosn             |
  TokenVar AlexPosn String  | 
  deriving (Eq,Show) 

}
