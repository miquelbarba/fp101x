merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

halve xs = splitAt (length xs `div` 2) xs

msort2 [] = []
msort2 [x] = [x]
msort2 xs = merge (msort2 ys) (msort2 zs)
  where (ys, zs) = halve xs
