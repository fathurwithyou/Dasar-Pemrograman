module KlasifikasiKomputer where

klasifikasi :: Int -> Int -> Int -> Int


klasifikasi a b c
  | a < 2 || b < 2 || c < 2 = 1
  | a < 5 || b < 5 = 2
  | a <= 7 && b <= 7 && c <= 7 = 3
  | a <= 7 || b <= 7 || c <= 7 = 4
  | otherwise = 5

--APLIKASI
--klasifikasi 8 9 4
--klasifikasi 4 10 2
--klasifikasi 6 10 1
