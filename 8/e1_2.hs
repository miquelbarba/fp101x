putStr' [] = return ()
putStr' (x : xs) = putChar x >> putStr' xs
