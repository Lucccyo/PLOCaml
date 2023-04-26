(* open Ast *)

(* let line = ref 1 *)
(*
let rec pp_value ppf ast =
  match ast with
  | Number n    -> Format.fprintf ppf "Int [%d]" n
  (* | Bool _b   -> Format.fprintf ppf "a" *)
  (* | String s -> Format.fprintf ppf "String [%S]" s *)
  (* | Relop (r, v1, v2) ->
    Format.fprintf ppf "Relop [%a %a %a]" pp_value v1 pp_relop r.pelem pp_value v2 *)
  (* | Logop (l, v1, v2) ->
    Format.fprintf ppf "(%a %a %a)" pp_value v1 pp_logop l.pelem pp_value v2 *)
  (* | Pfxop (p, v) ->
    Format.fprintf ppf "Pfxop [%a %a]" pp_pfxop p.pelem pp_value v *)
  | Plus (ast, ast_lst) -> Format.fprintf ppf "List [\t%a]"
  | List {pelem = l; _} -> Format.fprintf ppf "List [\t%a]" pp_values l
  (* | Group {pelem = l; _} -> Format.fprintf ppf "Group [\t%a]" pp_values l *)
  | _ -> assert false *)

(* and pp_values fmt = function
| [] -> ()
| [v] -> pp_value fmt v
| v :: tl ->
  pp_value fmt v;
  Format.fprintf fmt " ; ";
  pp_values fmt tl *)
(* 
let rec print_ast ppf ast =
  match ast with
  | Number n -> Format.fprintf ppf "%d" n
  | Plus vl  -> 

and pp_values fmt = function
| [] -> ()
| [v] -> pp_value fmt v
| v :: tl ->
  pp_value fmt v;
  Format.fprintf fmt " ; ";
  pp_values fmt tl

let print () =
  let fd = open_out "res.ml" in
  Printf.fprintf fd ""

  Printf.fprintf fd "%s\n" "let () =";
  (* Printf.fprintf fd " %a \n" print_ast ast; *)
  (* Printf.fprintf fd "\t%s\n" "Format.printf \"%d\"(f ());"; *)
  Printf.fprintf fd "\t%s\n" "()";
  close_out fd; *)
