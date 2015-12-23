putStrLn1 [] = putChar '\n'
putStrLn1 xs = putStr xs >> putStrLn1 ""

putStrLn2 [] = putChar '\n'
putStrLn2 xs = putStr xs >> putChar '\n'

putStrLn3 [] = putChar '\n'
putStrLn3 xs = putStr xs >>= \ x -> putChar '\n'

--putStrLn4 [] = putChar '\n'
--putStrLn4 xs = putStr xs >> \ x -> putChar '\n'

putStrLn5 [] = putChar '\n'
putStrLn5 xs = putStr xs >> putStr "\n"

putStrLn6 [] = putChar '\n'
putStrLn6 xs = putStr xs >> putStrLn6 "\n"

--putStrLn7 [] = return ""
--putStrLn7 xs = putStrLn7 xs >> putStr "\n"

--putStrLn8 [] = putChar "\n"
--putStrLn8 xs = putStr xs >> putChar '\n'
