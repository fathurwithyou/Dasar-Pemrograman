module ListOfInteger where

-- Definisi dan Spesifikasi

minList :: [Int] -> Int

{- minList l mengembalikan nilai minimum dari seluruh elemen list -}
minList li
 | length li == 1 = head li
 | otherwise = min (head li) (minList (tail li))

 

nbX :: Int -> [Int] -> Int

{- nbX x l menghasilkan banyaknya kemunculan x pada l -}
nbX a li
 | null li = 0
 | a == head li = 1 + nbX a (tail li)
 | otherwise = nbX a (tail li)
 

jmlMin :: [Int] -> (Int,Int)

{- jmlMin l menghasilkan tuple (a,b) dengan:
      a adalah nilai minimum dari elemen-elemen l dan

      b adalah jumlah kemunculan a pada l -}
jmlMin li = (minList li, nbX (minList li) li)
