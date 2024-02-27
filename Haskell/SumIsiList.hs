module SumIsiList where

--DEFINISI DAN SPESIFIKASI
sumIsiList :: [Float] -> Float
	{-menghitung hasil penjumlahan dari seluruh elemen sebuah list of integer l yang tidak kosong.-}

--REALISASI
sumIsiList l
  | null l = 0
  | otherwise = head l + sumIsiList (tail l)

--APLIKASI
--sumIsiList [1,2,3]
