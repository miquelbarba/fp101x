sp1 xs ys = sum [x*y | x <- xs, y <- ys]
sp2 xs ys = sum [x*y | (x, y) <- xs `zip` ys]
sp3 xs ys = product (zipWith (+) xs ys)
--sp4 xs ys = sum (product [(x,y) | x <- xs, y <- ys])
