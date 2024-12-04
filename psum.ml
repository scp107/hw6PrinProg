let psum lst =
  let rec helper lst acc result =
    match lst with
    | [] -> List.rev result 
    | x :: xs -> helper xs (acc + x) ((acc + x) :: result)
  in
  helper lst 0 []
