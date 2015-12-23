unfold p h t x
  | p x = []
  | otherwise = h x : unfold p h t (t x)

type Bit = Int 
chop8 :: [Bit] -> [[Bit]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

--chop81 = unfold [] (drop 8) (take 8)
chop82 = unfold null (take 8) (drop 8)
chop83 = unfold null (drop 8) (take 8)
chop84 = unfold (const False) (take 8) (drop 8)

map1 f = unfold null (f) tail
map2 f = unfold null (f (head)) tail
map3 f = unfold null (f . head) tail
--map4 f = unfold empty (f . head) tail

iterate1 f = unfold (const False) id f
iterate2 f = unfold (const False) f f
iterate3 f = unfold (const True) id f
iterate4 f = unfold (const True) f f
