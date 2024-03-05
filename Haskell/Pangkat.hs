module Pangkat where

-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{-pangkat(a,b) mengeluarkan a^b-}


--REALISASI
pangkat a b
  | b == 0 = 1
  | otherwise = a * pangkat a (b-1)

-- APLIKASI
-- pangkat 1 0
-- pangkat 5 2
-- pangkat 10 3
