module ListOfCharacter where

split :: [Char] -> [Char]
split li
 | null li = []
 | length li == 1 = [head li]
 | otherwise = [head li] ++ split (tail(tail li))

splitAlternate :: [Char] -> ([Char],[Char])

{- splitAlternate(l) menghasilkan dua buah list, misalnya l1 dan l2. l1 berisi

  semua elemen l pada posisi ganjil, l2 berisi semua elemen l pada posisi genap.

  l mungkin kosong.

-}
splitAlternate [] = ([], [])
splitAlternate li = (split li, split(tail li))