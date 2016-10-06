module ListSet:SET = struct
  type 'a set = 'a list

  (**the empty set**)
  let empty = []

  (**insert an element to the set**)
  let rec insert x l =
    match l with
      |[] -> [x]
      |hd::tl -> if (hd > x) then x::hd::tl else if (hd=x) then l else hd::(insert x tl)

  (**is element a member of the set**)
  let rec member x l =
    match l with
      |[]->false
      |hd::tl -> if (hd=x) then true else if (hd > x) then false else (member x tl)

  (**number of elements in the set**)
  let rec size l = 
    match l with
      |[] -> 0
      |hd::tl -> 1 + size tl

  (**union of two sets**)
  let rec union s1 s2 =
    match s2 with
      |[] -> s1
      |hd::tl -> union (insert hd s1) tl

  (**intersection of two sets**)
  let intersect s1 s2 =
    let rec intersect_rec temp s =
      match s with
        |[] -> temp
        |hd::tl -> if (member hd s1) then intersect_rec (insert hd temp) tl else intersect_rec temp tl
    in
      intersect_rec empty s2

  let rec as_list s = s

end


