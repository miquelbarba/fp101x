dropWhile1 _ [] = []
dropWhile1 p (x : xs)
   | p x = dropWhile1 p xs
   | otherwise = x : xs

dropWhile2 _ [] = []
dropWhile2 p (x : xs)
   | p x = dropWhile2 p xs
   | otherwise = xs

dropWhile3 p = foldr (\ x acc -> if p x then acc else x : acc) []

dropWhile4 p = foldl add []
   where add [] x = if p x then [] else [x]
         add acc x = x : acc
