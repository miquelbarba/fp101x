import Prelude hiding ((&&))

a && b = if not (a) then not (b) else True

{-
True && True 
True && False
False && True
False && False
-}
