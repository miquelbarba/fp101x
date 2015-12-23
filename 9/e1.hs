module Main where
import Data.List
import Data.Char
import Data.Coerce
import Unsafe.Coerce


data Nat = Zero
         | Succ Nat
         deriving Show

integerToNat1 0 = Zero
integerToNat1 (n+1) = Succ (integerToNat1 n)

integerToNat2 0 = Succ Zero
integerToNat2 n = (Succ (integerToNat2 n))

integerToNat3 n = product [(unsafeCoerce c) :: Integer | c <- show n]

integerToNat4 n = integerToNat4 n

--integerToNat5 (n+1) = Succ (integerToNat n)
integerToNat5 0 = Zero

--integerToNat6 (n+1) = let m = integerToNat6 n in Succ m
integerToNat6 0 = Zero

--integerToNat7 (n+1) = head . m
--  where {
--        ; m 0 = [0]
--        ; m (n + 1) = [Sum [x | x <- (1 : m n)]]
--        }

--integerToNat8 :: Integer -> Nat
--integerToNat8 = \ n -> genericLength [c | c <- show n, isDigit c]
