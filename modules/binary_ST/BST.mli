module type BST = sig
  type 'a bst
  val empty : 'a bst
  val searchBST : 'a -> 'a bst -> bool
  val insert : 'a -> 'a bst -> 'a bst
  val delete : 'a -> 'a bst -> 'a bst
  val traversal : 'a bst -> 'a list
end 
