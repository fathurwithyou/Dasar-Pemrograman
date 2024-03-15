module IsEqual where

--DEFINISI DAN SPESIFIKASI
isEqual :: [Int] -> [Int] -> Bool
	{-menerima masukan 2 buah list of character yang tidak kosong, misalnya T1 dan T2 dan menghasilkan true jika potongan awal list T2 mengandung T1 
	   (dengan panjang dan urutan karakter yang sama).-}
--REALISASI	
isEqual l1 l2
 | null l1 && null l2 = True
 | null l1 || null l2 = False
 | otherwise = head l1 == head l2 && isEqual (tail l1) (tail l2)

--APLIKASI
--isEqFront  ['a', 'b', 'c']  ['a', 'b', 'c', 'd', 'e'] 