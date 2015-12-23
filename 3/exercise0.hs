--halve xs = (take n xs, drop n xs)
--  where n = length xs / 2

halve1 xs = splitAt (length xs `div`2) xs

halve2 xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
  where n = length xs

halve3 xs = splitAt (length xs `div` 2)

halve4 xs = (take n xs, drop (n + 1) xs)
  where n = length xs `div` 2

halve5 xs = splitAt (div (length xs) 2) xs

--halve6 xs = splitAt (length xs / 2) xs

halve7 xs = (take n xs, drop n xs)
  where n = length xs `div` 2 

--main = do
--       putStrLn halve1 [1..8]
--       putStrLn halve2 [1..8]
--       putStrLn halve3 [1..8]
--       putStrLn halve4 [1..8]
--       putStrLn halve5 [1..8]
--       putStrLn halve7 [1..8]

