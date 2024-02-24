module DeretSegitiga where


deretSegitiga :: Int -> Int
-- deretSegitiga(n) menghasilkan nilai bilangan ke-n pada deret segitiga
-- prekondisi: n > 0

--REALISASI
deretSegitiga n
  | n == 1 = 1
  | otherwise = deretSegitiga (n-1) + n

--APLIKASI
--deretSegitiga 1
--deretSegitiga 5
--deretSegitiga 100
