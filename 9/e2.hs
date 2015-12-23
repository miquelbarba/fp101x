module Main where
import Data.List
import Data.Char

data Nat = Zero
         | Succ Nat
         deriving Show


add1 Zero n = n
add1 (Succ m) n = Succ (add1 n m)

add2 (Succ m) n = Succ (add2 n m)
add2 Zero n = n

add3 Zero n = Zero
add3 (Succ m) n = Succ (add3 m n)

add4 (Succ m) n = Succ (add4 m n)
add4 Zero n = Zero

add5 n Zero = Zero
add5 n (Succ m) = Succ (add5 n m)

add6 n (Succ m) = Succ (add6 n m)
add6 n Zero = Zero

add7 n Zero = n
add7 n (Succ m) = Succ (add7 m n)

add8 n (Succ m) = Succ (add8 m n)
add8 n Zero = n
