import Prelude hiding ((&&))

a && b = if a then b else False

{-
True && True 
True && False
False && True
False && False
-}
