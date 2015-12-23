curry1 f = \ x y -> f x y
curry2 f = \ x y -> f
curry3 f = \ x y -> f (x, y)
curry4 f = \ (x, y) -> f x y  
