module DendaPerpustakaan where

dendaPerpustakaan :: Int -> Int -> Int -> Int -> Int -> Int -> Int
dendaPerpustakaan d1 m1 y1 d2 m2 y2
  | (y2 == y1) && (m2 == m1) && (d2 > d1) = 15*(d2-d1)
  | (y2 == y1) && (m2 > m1) = 500 * (m2-m1)
  | y2 > y1 = 10000
  | otherwise = 0
