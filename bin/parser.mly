%{
  open Ast
%}

%token PLUS
%token MINUS
%token MUL
%token DIV
%token LBRACKET, RBRACKET
%token<int> NUMBER
%token EOF

%start main
%type<Ast.ast> main

%%

main:
  expr EOF {$1}
  ;

expr:
  | NUMBER {Number $1}
  | LBRACKET op exprs RBRACKET { $2 $3 }
  ;

op:
  | PLUS { fun l -> Plus l }
  | MINUS { fun l -> Minus l }
  | MUL { fun l -> Mul l }
  | DIV { fun l -> Div l }

exprs:
  |             {[]}
  | expr exprs  {$1 :: $2}