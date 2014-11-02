import Prelude hiding ((^))
m ^ 0 = 1
m ^ n = m * m * m ^ (n - 2)
