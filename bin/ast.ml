type ast =
  | Number of int
  | Brackets of ast
  | Plus of ast list
  | Minus of ast list
  | Mul of ast list
  | Div of ast list
[@@deriving show]
