module HargaTiket where

minTiket :: Int -> Int
minTiket n 
  | (n >= 6 && n <= 8) || (n >= 15 && n <= 17) = 0
  | (n >= 7 && n <= 18) = 5000
  | otherwise = 10000


hargaTiket :: Int -> Int -> Int
hargaTiket a b = minTiket a + minTiket b