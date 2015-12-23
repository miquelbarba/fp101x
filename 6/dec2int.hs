
dec2int1 :: [Integer] -> Integer
dec2int2 :: [Integer] -> Integer
dec2int3 :: [Integer] -> Integer
dec2int4 :: [Integer] -> Integer
dec2int1 = foldr (\ x y -> 10 * x + y) 0
dec2int2 = foldl (\ x y -> x + 10 * y) 0
dec2int3 = foldl (\ x y -> 10 * x + y) 0
dec2int4 = foldr (\ x y -> x + 10 * y) 0
