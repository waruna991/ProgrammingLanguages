module Circle:CIRCLE =  struct
  let pi = 3.14159
  let circum r = 2.0 *. pi *. r
  let sq x =  x *. x
  let area r = pi *. (sq r)
  module Nested = struct
    let nest = 2
  end

end;;
