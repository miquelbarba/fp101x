replicate1 n a = [True | _ <- [1..n]]
replicate2 n a = [n | _ <- [1..n]]
replicate3 n a = [a | _ <- [1..a]]
replicate4 n a = [a | _ <- [1..n]]
