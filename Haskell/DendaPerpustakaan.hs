module DendaPerpustakaan where

denda :: Int -> Int -> Int -> Int -> Int -> Int -> Int
denda d1 m1 y1 d2 m2 y2
   y1 == y2 && m1 == m2 && d1 < d2 = 15 * (d2 - d1)
  | y1 == y2 && m1 < m2 = 500 * (m2 - m1)
  | y1 < y2 = 10000
  | otherwise = 0 
