data Tree = Leaf Integer
          | Node Tree Tree
          deriving Show

halve1 xs = splitAt (length xs `div` 2) xs
balance1 [x] = Leaf x
balance1 xs = Node (balance1 ys) (balance1 zs)
  where (ys, zs) = halve1 xs

--halve2 xs = splitAt (length xs / 2) xs
--balance2 [x] = Leaf x
--balance2 xs = Node (balance2 ys) (balance2 zs)
--  where (ys, zs) = halve2 xs

--halve3 xs = splitAt (length xs `div` 2) xs
--balance3 [x] = Leaf x
--balance3 xs = Node ys zs
--  where (ys, zs) = balance3 (halve3 xs)

--halve4 xs = splitAt (length xs `div` 2) xs
--balance4 x = Leaf x
--balance4 xs = Node (balance4 ys) (balance4 zs)
--  where (ys, zs) = halve4 xs
