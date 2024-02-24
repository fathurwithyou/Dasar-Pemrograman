module KonversiSuhu where

--DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{-konversiSuhu(n,c) menerima dua buah masukan dan mengeluarkan 
   ouput suhu dalam satuan c
	-}

--REALISASI
konversiSuhu n c
 | c == 'R' = n*4/5
 | c == 'F' = n*9/5+32
 | otherwise = n+273.15
--APLIKASI
--konversiSuhu 25 'R'
--konversiSuhu 37 'F'
--konversiSuhu (-30) 'K'
