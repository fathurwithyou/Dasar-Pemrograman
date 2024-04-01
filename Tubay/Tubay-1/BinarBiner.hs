module BinarBiner where

binarBiner :: Int -> Int 
binarBiner n 
 | n == 0 = 0
 | n == 1 = 1
 | otherwise = 10 * binarBiner (div n 2) + mod n 2
ww