let getnthdigit num n =
  let rec helper num index length =
    match num with
    | 0 -> -1  
    | _ when index = length -> num mod 10  
    | _ -> helper (num / 10) (index + 1) length  
  in
  let length = String.length (string_of_int num) in
  if n > length || n <= 0 then -1 
  else helper num 1 (length - n + 1)
