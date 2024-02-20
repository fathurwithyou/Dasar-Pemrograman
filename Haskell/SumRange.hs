module SumRange where
-- m <= n
sumRange:: Integer -> Integer -> Integer
sumRange m n
 | m == n = m
 | otherwise = m + sumRange (m+1) n
