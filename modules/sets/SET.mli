module type SET = sig
  type 'a set
  (** the empty set **)
  val empty : 'a set
  (** insert element into given set **)
  val insert : 'a -> 'a set -> 'a set
  (** is element a member of given set ? **)
  val member : 'a -> 'a set -> bool
  (** number of elements in set **)
  val size: 'a set -> int
  (** union of two sets **)
  val union: 'a set -> 'a set -> 'a set
  (** intersection of two sets **)
  val intersect: 'a set -> 'a set -> 'a set
  (** set contents as list **)
  val as_list : 'a set -> 'a list
end

