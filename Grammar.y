{ 
module Grammar where 
import Tokens
}

%name parseJulio 
%tokentype { Token } 
%error { parseError }
%token 
    repeatH { TRepeatH $$} 
	repeatV { TRepeatV $$} 
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
	
%left 'repeatH'
%left 'repeatV'
%left 'joinH'
%left 'joinV'
%left '='
%left ';'

%% 
Exp : repeatH int '{' Exp '}' ';' { RepeatH $2 $4} 
	| repeatV int '{' Exp '}' ';' { RepeatV $2 $4}
	| joinH Exp Exp ';' { JoinH $2 $3}
    | '(' Exp ')'            { $2 } 
	| joinV Exp Exp ';'{ JoinV $2 $3}
    | int                    { Int $1 } 
    | var                    { Var $1 } 
	| var '=' Exp ';'            {Equals $1 $3}

 
{ 
parseError :: [Token] -> a
parseError (x:xs) = error ("Parse error at "++ (tokenPosn x))
data Exp = RepeatH Int Exp 
		| RepeatV Int Exp  
		| JoinH Exp Exp
		| JoinV Exp Exp
		| Equals String Exp
        | Int Int 
        | Var String 
         deriving Show 
} 