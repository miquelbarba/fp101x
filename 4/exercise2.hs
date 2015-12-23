pyths1 n
  = [(x, y, z) | x <- [1..n], y <- [1..x], z <- [1..y], x ^ 2 + y ^ 2 == z ^ 2]

pyths2 n 
  = [(x, y, z) | x <- [1..n], y <- [x..n], z <- [y..n], x ^ 2 + y ^ 2 == z ^ 2]

pyths3 n
  = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x ^ 2 + y ^ 2 == z ^ 2]

pyths4 n
  = [(x, y, (x^2 + y* 2)) | x <- [1..n], y <- [1..n]]
