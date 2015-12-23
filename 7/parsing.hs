import Data.Char
import Control.Monad

--infixr 5 +++

newtype Parser a              =  P (String -> [(a,String)])
--item :: Parser Char
item =  P (\inp -> case inp of
                      [] -> []
                      (x:xs) -> [(x,xs)])



--p +++ q = P (\inp -> case p inp of
--                       [] -> parse q inp
--                       [(v, out)] -> [(v, out)])

--aparser = P (\inp -> return 1 +++ return 2)


parse (P p) inp = p inp
