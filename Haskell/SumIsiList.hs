module SumIsiList where

sumIsiList :: [Float] -> Float
sumIsiList l
  | null l = 0
  | otherwise = head l + sumIsiList (tail l)