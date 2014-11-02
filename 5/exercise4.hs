
and1 [] = True
and1 (b : bs) = b && and1 bs

and2 [] = True
and2 (b : bs)
  | b = and2 bs
  | otherwise = False

and4 [] = False
and4 (b : bs) = b || and4 bs

and5 [] = True
and5 (b : bs)
  | b == False = False
  | otherwise = and5 bs

and7 [] = True
and7 (b : bs) = and7 bs && b

and8 [] = True
and8 (b : bs)
  | b = b
  | otherwise = and8 bs
  
