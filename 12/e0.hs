last1 [x] = x
last1 (_ : xs) = last1 xs

last2 (_ : xs) = last2 xs
last2 [x] = x
