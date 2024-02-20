module OSNK22 where

putih :: Int -> Int
putih x
  | x > 0 = 1 + putih (x `div` 2)
  | otherwise = 0

merah :: Int -> Int -> Int
merah x y
  | x == y = putih x
  | x > y = 1 + merah (x - 1) y
  | otherwise = 0