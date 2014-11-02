import Prelude hiding ((&&))

a && b = if a then if b then True else False else False

{-
True && True 
True && False
False && True
False && False
-}
