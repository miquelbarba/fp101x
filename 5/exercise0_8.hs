import Prelude hiding ((^))
m ^ 1 = m
m ^ n = m * m ^ (n - 1)
