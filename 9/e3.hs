module Main where
import Data.List
import Data.Char

data Nat = Zero
         | Succ Nat
         deriving Show

add Zero n = n
add (Succ m) n = Succ (add n m)

mult1 Zero Zero = Zero
mult1 m (Succ n) = add m (mult1 m n)

mult2 m Zero = Zero
mult2 m (Succ n) = add m (mult2 m n)

mult3 m Zero = Zero
mult3 m (Succ n) = add n (mult3 m n)

mult4 m Zero = Zero
mult4 m n = add m (mult4 m (Succ n))
