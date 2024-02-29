module KaliTambah where

--DEFINISI DAN SPESIFIKASI
kaliTambah :: Int -> Bool
	{-kaliTambah(n) adalah fungsi yang menerima input integer dan mengeluarkan nilai boolean -}

--REALISASI

--kaliTambah n = summ == times
-- where 
--	 a = div n 1000
--	 b = div (mod n 1000) 100
--	 c = div (mod n 100) 10
--	 d = mod n 10
--	 summ = a+b+c+d
--	 times = a*d
kaliTambah n = 
	let
		 a = div n 1000 -- n `div` 1000
		 b = div (mod n 1000) 100
		 c = div (mod n 100) 10
		 d = mod n 10
		 summ = a+b+c+d
		 times = a*d
    in summ == times

--APLIKASI
-- kaliTambah 1111
-- kaliTambah 3213
--
