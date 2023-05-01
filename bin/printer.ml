open Ast

let rec pp_ast ppf ast =
  match ast with
  | Number n -> Format.fprintf ppf "%d" n
  | Plus l   -> Format.fprintf ppf "%a" (pp_list ~sep:"+") l
  | Minus l  -> Format.fprintf ppf "%a" (pp_list ~sep:"-") l
  | Mul l    -> Format.fprintf ppf "%a" (pp_list ~sep:"*") l
  | Div l    -> Format.fprintf ppf "%a" (pp_list ~sep:"/") l
  | Brackets _   -> Format.fprintf ppf " () "

and pp_list fmt ~sep = function
  | [ ]     -> ()
  | [v]     -> pp_ast fmt v
  | v :: tl ->
    pp_ast fmt v;
    Format.fprintf fmt "%s" sep;
    pp_list fmt ~sep:sep tl

(* let indent = ref 1 *)

let print ast =
  let fd = open_out "res.ml" in
  (* let fmt = Format.formatter_of_out_channel fd in *)
  let fmt = Format.std_formatter in

  Format.fprintf fmt "\n%s\n" "Format.printf \"%d\"(f ());";
  Format.fprintf fmt "\t%a" pp_ast ast;
  Format.fprintf fmt ";\n\t%s\n" "()";
  close_out fd;
