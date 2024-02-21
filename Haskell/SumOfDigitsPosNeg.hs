module SumOfDigitsPosNeg where

sumDigits :: Int -> Int
sumDigits n
  | n == 0 = 0
  | otherwise = mod n 10 + sumDigits (div n 10)

sumOfDigitsPosNeg :: Int -> Int
sumOfDigitsPosNeg n 
  | n < 0 = sumDigits ((-1) * n)
  | otherwise = sumDigits n
