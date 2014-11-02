import Prelude hiding ((!!))

(x : _) !! 1 = x
(_ : xs) !! n = xs !! (n - 1)
