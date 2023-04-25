{ 
module Grammar where 
import Tokens
}

%name parseJulio 
%tokentype { Token } 
%error { parseError }
%token 
  repeat { TRepeat $$}
  joinH   { TJoinH   $$}
  joinV   { TJoinV   $$}
  int     { TNumber (AlexPn x y z) $$}
  var     { TIdentifier (AlexPn x y z) $$}
  '='     { TEquals $$}
  '('     { TLeftParen $$}
  ')'     { TRightParen $$ }
  '{'     { TLeftBrace $$ }
  '}'     { TRightBrace $$ }
  ';'     { TSemiColon $$ }
  '<<'    {TImport $$ }
  '>>'    {TExport $$ }
  not   {TNot $$}
  rotate {TRotate $$}
  scale {TScale $$}
  reflectX {TReflectX $$}
  reflectY {TReflectY $$}
  '_'     {TBlank $$}
  and     {TAnd $$}
  or      {TOr $$}
  subtile {TSubtile $$}
  gibb    {TGibb $$}
  true    {TBool (AlexPn x y z) $$}
  false   {TBool (AlexPn x y z) $$}
  lt      {TLessThan $$}
  gt      {TGreaterThan $$}
  eq      {TIsEqual $$}
  neq     {TNotEqual $$}
  while   {TWhile $$}
  if      {TIf $$}
  else    {TElse $$}
  width   {TWidth $$}
  height  {THeight $$}
  print   {TPrint $$}
  '+'     {TAdd $$}
  '-'     {TSub $$}

%left 'rotate'
%left 'repeat'
%left 'joinH'
%left 'joinV'
%left '='
%left ';'
%left '<<'
%left '>>'
%left 'not'
%left 'scale'
%left 'reflectX'
%left 'reflectY'
%left '_'
%left 'and'
%left 'or'
%left 'subtile'
%left 'gibb'
%left 'lt'
%left 'gt'



%% 

ExpSeq: Exp ';' ExpSeq { ExpSeq $1 $3} 
	| Exp ';' { Exp $1}

Exp : repeat int '{' ExpSeq '}'  { Repeat $2 $4}
    | joinH Exp Exp            { JoinH $2 $3}
    | '(' Exp ')'             { $2 }
    | joinV Exp Exp            { JoinV $2 $3}
    | int                      { Int $1 }
    | var                      { Var $1 }
    | var '=' Exp              { Equals $1 $3 }
    | var '<<' Exp             { Import $1 $3 }
    | var '>>' Exp             { Export $1 $3 }
    | not Exp                { Not $2 }
    | rotate int Exp           { Rotate $2 $3 }
    | scale int Exp            { Scale $2 $3 }
    | reflectX Exp             { ReflectX $2 }
    | reflectY Exp             { ReflectY $2 }
    | '_' Exp                  { Blank $2 }
    | and Exp Exp              { And $2 $3 }
    | or Exp Exp               { Or $2 $3 }
    | subtile int Exp Exp Exp  { Subtile $2 $3 $4 $5}
    | gibb int Exp Exp Exp     { Gibb $2 $3 $4 $5}
    | true                     { Bool $1 }
    | false                    { Bool $1 }
    | Exp lt Exp               { LessThan $1 $3 }
    | Exp gt Exp               { LessThan $1 $3 }
    | Exp eq Exp              {IsEqual $1 $3}
    | Exp neq Exp             {NotEqual $1 $3}
    | if Exp '{' ExpSeq '}'   {If $2 $4}
    | if Exp '{' ExpSeq '}' else '{' ExpSeq '}'   {If $2 $4 Else $8}
    | while Exp '{' ExpSeq '}'    {While $2 $4 }
    | width Exp              {Width $2}
    | height Exp             {Height $2}
    | print Exp              {Print $2}
    | Exp '+' Exp            {Add $1 $3}
    | Exp '-' Exp            {Sub $1 $3}
{ 
parseError :: [Token] -> a
parseError (x:xs) = error ("Parse error at "++ (tokenPosn x))

data ExpSeq = ExpSeq Exp ExpSeq 
		| Exp Exp 
		deriving Show

data Exp = Repeat Int ExpSeq
         | JoinH Exp Exp
         | JoinV Exp Exp
         | Import String Exp
         | Export String Exp
         | Equals String Exp
         | Not Exp
         | Int Int
         | Var String
         | Rotate Int Exp
         | Scale Int Exp
         | ReflectX Exp
         | ReflectY Exp
         | Blank Exp
         | And Exp Exp
         | Or Exp Exp
         | Subtile Int Exp Exp Exp
         | Gibb Int Exp Exp Exp
         | Bool Bool
         | LessThan Exp Exp
         | GreaterThan Exp Exp
         | IsEqual Exp Exp
         | NotEqual Exp Exp
         | While Exp ExpSeq
         | Width Exp
         | Height Exp
         | Print Exp
         | Add Exp Exp
         | Sub Exp Exp
         | If Exp ExpSeq
         | If Exp ExpSeq Else ExpSeq
         deriving Show
} 