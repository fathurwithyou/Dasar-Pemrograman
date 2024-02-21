module DeretSegitiga where

--DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{-deretSegitiga(n) adalah fungsi yang mengeluarkan bilangan
   ke-n pada deret segitiga-}

--REALISASI
deretSegitiga n
  | n == 1 = 1
  | otherwise = deretSegitiga(n-1) + n

--APLIKASI
-- deretSegitiga 10
-- deretSegitiga 11
-- deretSegitiga 100
