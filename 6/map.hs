map1 f = foldr (\ x xs -> xs ++ [f x]) []
map2 f = foldr (\ x xs -> f x ++ xs) []
map3 f = foldl (\ xs x -> f x : xs) []
map4 f = foldl (\ xs x -> xs ++ [f x]) []
