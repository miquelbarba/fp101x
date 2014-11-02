elem1 _ [] = False
elem1 x (y : ys)
  | x == y = True
  | otherwise = elem1 x ys
