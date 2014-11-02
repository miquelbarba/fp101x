factors 1 = []
factors n = let prime = head $ dropWhile ((/= 0) . mod n) [2 .. n]
            in (prime :) $ factors $ div n prime

perfects1 n x = [x | x <- [1..n], isPerfect x]
  where isPerfect num = sum (factors num) == num
