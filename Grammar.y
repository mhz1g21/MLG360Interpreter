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
  int { TNumber (AlexPn x y z) $$}
  var { TIdentifier (AlexPn x y z) $$}
  '=' { TEquals $$}
  '(' { TLeftParen $$}
  ')' { TRightParen $$ }
	'{' { TLeftBrace $$ }
	'}' { TRightBrace $$ }
	';' { TSemiColon $$ }
  '<<' {TImport $$ }
  '>>' {TExport $$ }
	'¬'  {TNot $$}
	rotate {TRotate $$}

%left 'rotate'
%left 'repeat'
%left 'joinH'
%left 'joinV'
%left '='
%left ';'
%left '<<'
%left '>>'
%left '¬'



%% 
ExpSeq: Exp ';' ExpSeq { ExpSeq $1 $3} 
	| Exp ';' { Exp $1}

Exp : repeat int '{' ExpSeq '}'  { Repeat $2 $4}
	| joinH Exp Exp  { JoinH $2 $3}
  | '(' Exp ')'            { $2 }
	| joinV Exp Exp { JoinV $2 $3}
  | int                    { Int $1 }
  | var                    { Var $1 }
	| var '=' Exp             {Equals $1 $3}
  | var '<<' Exp           {Import $1 $3}
  | var '>>' Exp           {Export $1 $3}
	| '¬' Exp                {Not $2}
	| rotate int Exp         {Rotate $2 $3}



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
         deriving Show 
} 