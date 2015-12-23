getLine1 = get1 ""
get1 xs
  = do x <- getChar
       case x of 
            ' ' -> return xs
            '\n' -> return xs
            _ -> get1 (xs ++ [x])

getLine2 = get2 ""
get2 xs
  = do x <- getChar
       case x of 
            '\n' -> return xs
            _ -> get2 (x : xs)

getLine3 = get3 ""
get3 xs
  = do x <- getChar
       case x of 
            '\n' -> return xs
            _ -> get3 (xs ++ [x])
