let s1 = ListSet.empty;;

let s1 = ListSet.insert 3 s1;;
let s1 = ListSet.insert 4 s1;;
let s1 = ListSet.insert 5 s1;;
let s1 = ListSet.insert 1 s1;;
ListSet.as_list s1;;

let s2 = ListSet.empty;;

let s2 = ListSet.insert 3 s2;;
let s2 = ListSet.insert 4 s2;;
let s2 = ListSet.insert 6 s2;;
let s2 = ListSet.insert 1 s2;;
ListSet.as_list s2;;

let s = ListSet.intersect s1 s2;;
ListSet.as_list s;;
