let psum lst =
  let rec helper lst acc =
    match lst with
    | [] -> []  (* 如果输入为空列表，返回空列表 *)
    | x :: xs ->
        let current_sum = x + acc in
        current_sum :: helper xs current_sum  (* 将当前和加入结果列表，并递归处理剩余部分 *)
  in
  helper lst 0  (* 初始累加值为 0 *)
