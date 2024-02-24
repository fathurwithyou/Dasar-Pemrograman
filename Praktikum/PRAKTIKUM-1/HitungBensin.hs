module HitungBensin where

hitungBensin :: Int -> Int -> Int
counter :: Int -> Int

--REALISASI
counter n
  | n == 1 = 0
  | mod n 2 == 1 = 1 + counter (3*n+1)
  | otherwise = 1 + counter (div n 2)

hitungBensin a b
  | a > b = 0
  | otherwise = counter a + hitungBensin (a+1) b

--APLIKASI
--hitungBensin 11 11
--hitungBensin 1 10
