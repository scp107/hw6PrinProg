let rec getnthdigit num n =
  let digits = string_of_int num in  
  if n <= 0 || n > String.length digits then
    failwith "Invalid digit position" 
  else
    int_of_char (String.get digits (n - 1)) - int_of_char '0'  
