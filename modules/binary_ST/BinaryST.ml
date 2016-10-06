module BinaryST:BST = struct
  type 'a bst = |Parent of 'a * 'a bst * 'a bst
                |Empty
  let empty = Empty

  let rec insert x t = 
    match t with
      |Empty -> Parent(x,Empty,Empty)
      |Parent(p,left,right) -> if (p=x) then t else if(x>p) then Parent(p,left,insert x right) else Parent(p,insert x left,right)

  let rec searchBST x t = 
    match t with
      |Empty ->false
      |Parent(p,left,right) -> if (p=x) then true else if (x>p) then searchBST x right else searchBST x left

  let delete x t = t

  let rec traversal bt =
    match bt with 
      |Empty -> []
      |Parent(p,left,right) -> (traversal left)@ [p] @ (traversal right)

end


let bt = BinaryST.empty;;
let bt = BinaryST.insert 11 bt;;
let bt = BinaryST.insert 2 bt;;
let bt = BinaryST.insert 5 bt;;
let bt = BinaryST.insert 4 bt;;
BinaryST.searchBST 4 bt;;
BinaryST.traversal bt
