--any1 p = map p . or
any2 p = or . map p
any3 p xs = length(filter p xs) > 0
any4 p = not . null . dropWhile (not . p)
any5 p = null . filter p
any6 p xs = not (all (\ x -> not (p x)) xs)
any7 p xs = foldr (\ x acc -> (p x) || acc) False xs
any8 p xs = foldr (||) True (map p xs)
