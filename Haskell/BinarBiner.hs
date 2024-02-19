module BinarBiner where

binarBiner :: Int -> Int
binarBiner x 
  | x <= 1 = x
  | otherwise = 10 * (binarBiner (div x 2)) + mod x 2