module SumRange where
-- m <= n
sumRange:: Int -> Int -> Int
sumRange m n
 | m == n = m
 | otherwise = m + sumRange (m+1) n