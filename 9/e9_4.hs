data Maybe1 a = Nothing1 | Just1 a
instance Monad Maybe1 where
        return x = Just1 x
        Nothing1 >>= f = f Nothing1
        (Just1 x) >>= f = f x
