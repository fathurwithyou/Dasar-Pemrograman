module SumOfDigits where

sumOfDigits :: Int -> Int
sumOfDigits n
  | n == 0 = 0
  | otherwise = mod n 10 + sumOfDigits (div n 10)
