let maxAbsoluteVal lst =
  let rec helper lst current_max =
    match lst with
    | [] -> current_max  
    | x :: xs ->
        let abs_x = abs x in  
        helper xs (max abs_x current_max)  
  in
  helper lst 0  
