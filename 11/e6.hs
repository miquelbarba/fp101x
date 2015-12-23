fibs1 = 1 : [x + y | (x, y) <- zip fibs1 (tail fibs1)]

fibs2 = 0 : 1 : zipWith (*) fibs2 (tail fibs2)

fibs3 = 0 : 1 : [x+y | (x, y) <- zip fibs3 (tail fibs3)]

fibs4 = 1 : 1 : [x+y | (x, y) <- zip (tail fibs4) fibs4]
