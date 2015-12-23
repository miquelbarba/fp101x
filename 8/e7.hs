m1 f as = sequence (map f as)

m2 f [] = return []
m2 f (a : as) = f a >>= \ b -> m2 f as >>= \ bs -> return (b : bs)

m3 f as = sequence (map f as)

--m4 f [] = return []
--m4 f (a : as) = f a >> \ b -> m4 f as >> \ bs -> return (b : bs)

--m5 f [] = return []
--m5 f (a : as) =
--  do
--     f a -> b
--     m5 f as -> bs
--     return (b : bs)

m6 f [] = return []
m6 f (a : as) 
  = do b <- f a
       bs <- m6 f as
       return (b : bs)

m7 f [] = return []
m7 f (a : as)
  = f a >>=
      \ b -> 
        do bs <- m7 f as
           return (b : bs) 
