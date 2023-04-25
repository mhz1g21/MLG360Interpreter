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
  nothing  {TNothing $$}

%left 'joinH'
%left 'joinV'
%left 'rotate'
%left 'repeat'
%left '='
%left ';'
%left '<<'
%left '>>'
%left 'while'
%left 'if'
%left 'else'
%left 'width'
%left 'height'
%left 'print'
%left '+'
%left '-'
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
%left 'eq'
%left 'neq'




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
    | true                     { Bool True }
    | false                    { Bool False }
    | lt Exp Exp               { LessThan $2 $3 }
    | gt Exp Exp             { GreaterThan $1 $3 }
    | eq Exp Exp             {IsEqual $2 $3}
    | neq Exp Exp           {NotEqual $2 $3}
    | if Exp '{' ExpSeq '}' else '{' ConditionExp '}'   {If $2 $4 $8}
    | while Exp '{' ExpSeq '}'    {While $2 $4 }
    | width Exp              {Width $2}
    | height Exp             {Height $2}
    | print Exp              {Print $2}
    | '+' Exp Exp           {Add $2 $3}
    | '-' Exp Exp           {Sub $2 $3}

ConditionExp: nothing         {ConditionExp Nothing}
{ ExpSeq                      {ConditionExp $1}  

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
         | If Exp ExpSeq ExpSeq
         | Nothing
         deriving Show
} 