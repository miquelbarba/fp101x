import Prelude hiding ((||))

b || c 
  | b == c = c
  | otherwise = True

