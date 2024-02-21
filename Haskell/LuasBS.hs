module LuasBS where

--DEFINISI DAN SPESIFIKASI
luasBS :: Float -> Float
{-luasBS(n) adalah fungsi yang mengeluarkan luas bujur 
   sangkar dengan sisi n-}

--REALISASI
luasBS n
  | n == 0 = 0
  | otherwise = luasBS (n-1) + 2*n-1

--APLIKASI
-- luasBS 1
-- luasBS 3
-- luasBS 4
