let psum lst =
  let rec helper lst acc =
    match lst with
    | [] -> []  
    | x :: xs ->
        let current_sum = x + acc in
        current_sum :: helper xs current_sum  
  in
  helper lst 0  
