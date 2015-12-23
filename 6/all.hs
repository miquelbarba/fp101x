all1 p xs = and (map p xs)
--all2 p xs = map p (and xs)
all3 p = and . map p
all4 p = not . any (not . p)
--all5 p = map p . and
all6 p xs = foldl (&&) True (map p xs)
all7 p xs = foldr (&&) False (map p xs)
all8 p = foldr (&&) True . map p
