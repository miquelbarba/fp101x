--sequence1 [] = return []
--sequence1 (m : ms) = m >> \ _ -> sequence1 ms

sequence2 [] = return ()
sequence2 (m : ms) = (foldl (>>) m ms) >> return ()

sequence3 ms = foldl (>>) (return ()) ms

sequence4 [] = return ()
sequence4 (m : ms) = m >> sequence4 ms

sequence5 [] = return ()
sequence5 (m : ms) = m >>= \ _ -> sequence5 ms 

--sequence6 ms = foldr (>>=) (return ()) ms

sequence7 ms = foldr (>>) (return ()) ms

sequence8 ms = foldr (>>) (return []) ms
