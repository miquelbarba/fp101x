safetail xs = if null xs then [] else tail xs

safetail2 [] = []
safetail2 (_ : xs) = xs

safetail3 (_ : xs)
  | null xs = []
  | otherwise = tail xs

safetail4 xs
  | null xs = []
  | otherwise = tail xs

--safetail5 xs = tail xs
--safetail5 [] = []

safetail6 [] = []
safetail6 xs = tail xs

safetail7 [x] = [x]
safetail7 (_ : xs) = xs

safetail8
  = \ xs -> 
      case xs of
          [] -> []
          (_ : xs) -> xs

{- 
let xs = [1, 2, 3]

:t safetail
safetail xs == tail xs
:t safetail2
safetail2 xs == tail xs
:t safetail3
safetail3 xs == tail xs
:t safetail4
safetail4 xs == tail xs
:t safetail6
safetail6 xs == tail xs
:t safetail7
safetail7 xs == tail xs
:t safetail8
safetail8 xs == tail xs
-}
