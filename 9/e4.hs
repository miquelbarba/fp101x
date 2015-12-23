data Tree = Leaf Integer
          | Node Tree Integer Tree


occurs1 m (Leaf n) = m == n
occurs1 m (Node l n r)
  = case compare m n of
        LT -> occurs1 m l
        EQ -> True
        GT -> occurs1 m r

occurs2 m (Leaf n) = m == n
occurs2 m (Node l n r)
  = case compare m n of
        LT -> occurs2 m r
        EQ -> True
        GT -> occurs2 m l

--occurs3 m (Leaf n) = compare m n
--occurs3 m (Node l n r)
--  = case compare m n of
--        LT -> occurs3 m l
--        EQ -> True 
--        GT -> occurs3 m r

occurs4 m (Leaf n) = m == n
occurs4 m (Node l n r)
  = case compare m n of
        LT -> occurs4 m l
        EQ -> False
        GT -> occurs4 m r

occurs5 m (Leaf n) = m == n
occurs5 m (Node l n r) 
  | m == n = True
  | m < n = occurs5 m l
  | otherwise = occurs5 m r

occurs6 m (Leaf n) = m == n
occurs6 m (Node l n r) 
  | m == n = True
  | m > n = occurs6 m l
  | otherwise = occurs6 m r

--occurs7 m n = m == n
--occurs7 m (Node l n r) 
--  | m == n = True
--  | m < n = occurs7 m l
--  | otherwise = occurs7 m r

--occurs8 m n = m == n
--occurs8 m (Node l n r) 
--  | m == n = False
--  | m < n = occurs8 m r
--  | otherwise = occurs8 m l

