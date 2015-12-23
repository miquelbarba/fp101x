l1 f m
  = do x <- m
       return (f x)

l2 f m = m >>= \ a -> f a

l3 f m = m >>= \ a -> return (f a)

l4 f m = return (f m)

l5 f m = m >>= \ a -> m >>= \ b -> return (f a)

l6 f m = m >>= \ a -> m >>= \ b -> return (f b)

l7 f m = mapM f [m]

l8 f m = m >> \ a -> return (f a)  
