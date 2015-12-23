factors n = [x | x <- [1..n], n `mod` x == 0]

perfects1 n = [x | x <- [1..n], isPerfect x]
  where isPerfect num = sum (factors num) == num

perfects2 n = [x | x <- [1..n], isPerfect x]
  where isPerfect num = sum (init (factors num)) == num

perfects3 n = [isPerfect x | x <- [1..n]]
  where isPerfect num = sum (init (factors num)) == num

--perfects4 n = [x | x <- [1..n], isPerfect x]
--  where isPerfect num = init (factors num) == num 

