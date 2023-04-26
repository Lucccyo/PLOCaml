{
  open Parser
}

rule token = parse
| ' ' {token lexbuf}
| '+' {PLUS}
| '(' {LBRACKET}
| ')' {RBRACKET}
| ['0'-'9']* as n {NUMBER (int_of_string n)}
| eof {EOF}