module SumGeo where

sumGeo :: Int -> Int -> Int -> Int
sumGeo a r n 
 | n == 1 = a
 | otherwise = a * r^(n-1) + sumGeo a r (n-1)

-- 2 3 4
-- 2 + 2*3 + 2*9 + 2*27 + 2*81 = 242
