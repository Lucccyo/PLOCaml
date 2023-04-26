type ast =
  | Number of int
  | Brackets of ast
  | Plus of ast list
[@@deriving show]
