import Prelude hiding ((||))

let False || b = b
let True || _ = True


putStrLn (show ((True || True) == True))
putStrLn (show ((True || False) == True))
putStrLn (show ((False || True) == True))
putStrLn (show ((False || False) == False))
