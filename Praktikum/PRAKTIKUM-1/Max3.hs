module Max3 where

max3 :: Int -> Int -> Int -> Int
max3 a b c
  | (a > b) && (a > c) = a
  | (b > a) && (b > c) = b
  | otherwise = c
