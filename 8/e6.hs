s1 [] = return []
s1 (m : ms)
  = m >>=
      \ a ->
        do as <- s1 ms
           return (a : as)


--s2 ms = foldr func (return ()) ms
--  where 
--    func :: (Monad m) => m a -> m [a] -> m [a]
--    func m acc
--      = do x <- m
--           xs <- acc
--           return (x : xs)

--s3 ms = foldr func (return []) ms
--  where 
--        func :: (Monad m) => m a -> m [a] -> m [a]
--        func m acc = m : acc

--s4 [] = return []
--s4 (m : ms) = return (a : as)
--  where 
--        a <- m
--        as <- s4 ms

s5 ms = foldr func (return []) ms
  where 
        func :: (Monad m) => m a -> m [a] -> m [a]
        func m acc
          = do x <- m
               xs <- acc
               return (x : xs)

--s6 [] = return []
--s6 (m : ms)
--  = m >>
--      \ a -> 
--       do as <- s6 ms
--           return (a : as)

--s7 [] = return []
--s7 (m : ms) = m >>= \a ->
--  as <- s7 ms
--  return (a : as)

s8 [] = return []
s8 (m : ms)
  = do a <- m
       as <- s8 ms
       return (a : as)
