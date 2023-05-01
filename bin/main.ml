open Printer

let () =
  let fd = open_in "bin/file.lisp" in
  let parse fd = Parser.main Lexer.token (Lexing.from_channel fd) in
  let ast = parse fd in
  (* Format.printf "\n\n%s@.\n" (Ast.show_ast ast); *)
  print ast;
  ()

(* let () =
  let parse fd = Parser.main Lexer.token (Lexing.from_string fd) in
  Format.printf "\n\n%s@.\n" (Ast.show_ast (parse "1"));
  () *)
