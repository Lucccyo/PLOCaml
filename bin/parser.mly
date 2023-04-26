%{
  open Ast
%}

%token PLUS
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
  | LBRACKET PLUS exprs RBRACKET {Plus $3}
  ;

exprs:
  |             {[]}
  // | expr        {$1}
  | expr exprs  {$1 :: $2}