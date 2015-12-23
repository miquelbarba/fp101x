--split1 [] = []
--split1 [x] = [x]
--split1 (x:xs) = [([x] : (ls ++ rs)) | (ls, rs) <- split1 xs]

split2 [] = []
split2 (x:xs) = ([x], xs) : (split2 xs)

split3 [] = []
split3 (x:xs) = [(x:ls, rs) | (ls, rs) <- split3 xs]

split4 [] = []
split4 [_] = []
split4 (x:xs) = ([x], xs) : [(x:ls, rs) | (ls, rs) <- split4 xs]
