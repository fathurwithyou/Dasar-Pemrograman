module SumOfDigits where

getLastDigit :: Int -> Int
getLastDigit n = mod n 10

sumOfDigits :: Int -> Int
sumOfDigits n 
  | n == 0 = 0
  | otherwise = getLastDigit n + sumOfDigits (div n 10)