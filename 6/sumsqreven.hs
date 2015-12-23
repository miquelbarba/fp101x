compose2 :: [a -> a] -> (a -> a)
compose2 = foldr (.) id
--sumsqreven = compose2 [sum, map (^ 2), filter even]
