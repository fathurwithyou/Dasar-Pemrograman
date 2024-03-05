module FilterList where

--DEFINISI DAN SPESIFIKASI
filterList :: [Int] -> (Int -> [Int]) -> [Int]
{-filterList(li,f) melakukan “filter” atau penyaringan terhadap elemen li
   dan menghasilkan list baru dengan elemen yang lolos kriteria filter.-}

--REALISASI
isPos :: Int -> [Int]
isPos a 
 | a > 0 = [a]
 | otherwise = []

isNeg :: Int -> [Int]
isNeg a 
 | a < 0 = [a]
 | otherwise = []

isKabisat :: Int -> [Int]
isKabisat a
 | (mod a 400 == 0) || (mod a 4 == 0 && mod a 100 /= 0) = [a]
 | otherwise = []

filterList li f 
 | null li = []
 | otherwise = f (head li) ++ filterList (tail li) f

--APLIKASI
--filterList [1,0,3,0] isPos
--filterList [1,0,3,(-1)] isNeg
--filterList [2000,1900,1800,1740] isKabisat
--APLIKASI DENGAN LAMBDA
--filterList [1,0,3,0] (\x -> if x > 0 then [x] else []) -----> [1,3]
--filterList [1,0,3,(-1)] (\x -> if x < 0 then [x] else []) ----> [-1]
--filterList [2000,1900,1800,1740] (\a -> if (mod a 400 == 0) || (mod a 4 == 0 && mod a 100 /= 0) then [a] else []) -----> [2000,1740]
