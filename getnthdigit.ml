let getnthdigit num n =
  let rec helper num n length =
    match num with
    | 0 -> -1  
    | _ when length = n -> num mod 10  
    | _ -> helper (num / 10) n (length + 1)  
  in
  let num_length = String.length (string_of_int num) in
  if n > num_length || n <= 0 then -1  
  else helper num n 1  
