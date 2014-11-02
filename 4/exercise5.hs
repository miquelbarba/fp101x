
find k t = [v | (k', v) <- t, k == k']

positions1 x xs = find x (zip xs [0..n])
  where n = length xs - 1

positions2 x xs = find x xs

--positions3 x xs = find x (zipWith (+) xs [0..n])
--  where n = length xs - 1

positions4 x xs = find n (zip xs [0..x])
  where n = length xs - 1
