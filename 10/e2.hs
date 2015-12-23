reomveone x [] = []
removeone x (y : ys) 
  | x == y = ys
  | otherwise = y : removeone x ys


isChoice1 [] _ = True
isChoice1 (x:xs) [] = False
isChoice1 (x:xs) ys = elem x ys && isChoice1 xs (removeone x ys)

isChoice2 [] _ = False
isChoice2 (x:xs) [] = True
isChoice2 (x:xs) (y:ys) = elem y xs && isChoice2 xs (removeone x ys)

--isChoice3 [] _ = True
--isChoice3 xs [] = True
--isChoice3 xs ys = elem (head xs) ys && isChoice3 xs (removeone (head y) ys)

isChoice4 [] _ = True
isChoice4 (x:xs) [] = False
isChoice4 (x:xs) ys = elem x ys && isChoice4 (removeone x xs) ys
