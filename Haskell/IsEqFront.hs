module IsEqFront where

--DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool
	{-menerima masukan 2 buah list of character yang tidak kosong, misalnya T1 dan T2 dan menghasilkan true jika potongan awal list T2 mengandung T1 
	   (dengan panjang dan urutan karakter yang sama).-}
--REALISASI	
isEqFront t1 t2
  | null t1 = True
  | head t1 /= head t2 = False
  | otherwise = isEqFront (tail t1) (tail t2)

--APLIKASI
--isEqFront  [’a’, ’b’, ’c’]  [’a’, ’b’, ’c’, 'd', 'e']
