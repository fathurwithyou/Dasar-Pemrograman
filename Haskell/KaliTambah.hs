module KaliTambah where

sumOfDigits :: Int -> Int 
sumOfDigits n 
  | n == 0 = 0
  | otherwise = mod n 10 + sumOfDigits (div n 10)

kaliTambah :: Int -> Bool
kaliTambah n = sumOfDigits n == (div n 1000)*(mod n 10)