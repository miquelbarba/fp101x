uncurry1 f = \ (x, y) -> f x y
uncurry2 f = \ x y -> f (x, y)
uncurry3 f = \ (x, y) -> f
uncurry4 f = \ x y -> f
