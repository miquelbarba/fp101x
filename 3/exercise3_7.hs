import Prelude hiding ((&&))

a && b = if b then a else False

{-
True && True 
True && False
False && True
False && False
-}
