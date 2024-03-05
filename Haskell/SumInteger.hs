module SumInteger where

--DEFINISI DAN SPESIFIKASI
isGenap :: Int -> Bool
gtThan5 :: Int -> Bool
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
{-sumInteger(m,n,f) menerima 2 (dua) buah integer positif (>0), 
   misalnya m dan n, dan sebuah fungsi f dan menghasilkan 
   penjumlahan dari semua integer antara m dan n (termasuk m dan n) 
   yang memenuhi f. Jika dalam selang m dan n tidak ada 
   yang memenuhi f, maka hasilnya adalah 0.-}

--REALISASI
isGenap m = mod m 2 == 0

gtThan5 m = m > 5

sumInteger m n f
  | m > n = 0
  | f m = m + sumInteger (m+1) n f
  | otherwise = sumInteger (m+1) n f
--APLIKASI
--sumInteger 2 9 isGenap
--sumInteger 2 9 gtThan5
--sumInteger 8 5 isGenap
--
{-
sumInteger 1 100 (\x -> mod x 100 == 0)
sumInteger 1 100 (\x -> mod x 10 == 0 || mod x 5 == 0)
sumInteger 25 25 (\x -> x < 10)
		-}
