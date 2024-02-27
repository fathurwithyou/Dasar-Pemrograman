module FilterGanjil where

--DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
	{-melakukan filtering terhadap sebuah list of integer li sehingga menghasilkan list dengan elemen yang hanya terdiri atas bilangan ganjil yang muncul di li dengan urutan kemunculan yang sama.-}
--REALISASI
filterGanjil li
  | null li = []
  | mod (head li) 2 == 1 = [head li] ++ filterGanjil (tail li)
  | otherwise = filterGanjil (tail li)

--APLIKASI
-- filterGanjil [1,3,5,7]
