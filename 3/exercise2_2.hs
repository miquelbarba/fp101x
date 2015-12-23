import Prelude hiding ((||))

False || b = b
True || _ = True


--putStrLn (show ((True || True) == True))
--putStrLn (show ((True || False) == True))
--putStrLn (show ((False || True) == True))
--putStrLn (show ((False || False) == False))
