fibs = 0 : 1 : [x+y | (x, y) <- zip fibs (tail fibs)]

largefib1 = head (dropWhile (<= 1000) fibs)

largefib2 = last (take 19 fibs)

largefib3 = filter (> 1000) fibs

largefib4 = head (drop 1000 fibs)
