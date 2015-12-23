fibs = 0 : 1 : [x+y | (x, y) <- zip fibs (tail fibs)]

fib1 n = last (take n fibs)

fib2 n = head (drop (n -1) fibs)

fib3 n = fibs !! n

--fib4 n = index fibs n
