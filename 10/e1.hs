removeone1 x [] = [x]
removeone1 x ys
  | x == head ys = ys
  | otherwise = x : removeone1 x ys
  
removeone2 x [] = []
removeone2 x (y : ys)
  | x == y = ys
  | otherwise = x : removeone2 y ys

removeone3 x [] = []
removeone3 x ys
  | x == head ys = ys
  | otherwise = removeone3 x ys

reomveone4 x [] = []
removeone4 x (y : ys) 
  | x == y = ys
  | otherwise = y : removeone4 x ys
