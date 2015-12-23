filter1 p = foldl (\ xs x -> if p x then x : xs else xs) []
filter2 p = foldr (\ x xs -> if p x then x : xs else xs) []
filter3 p = foldr (\ x xs -> if p x then xs ++ [x] else xs) []
--filter4 p = foldl (\ x xs -> if p x then xs ++ [x] else xs) []
