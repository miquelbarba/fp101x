replicate4 0 _ = []
replicate4 n x = x : replicate4 (n - 1) x

--replicate1 1 x = x
--replicate1 n x = x : replicate1 (n - 1) x

--replicate2 0 _ = []
--replicate2 n x = replicate2 (n - 1) x : x

replicate3 1 _ = []
replicate3 n x = replicate3 (n - 1) x ++ [x]
