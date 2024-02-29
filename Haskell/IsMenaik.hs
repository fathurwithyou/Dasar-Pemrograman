module IsMenaik where

isMenaik :: [Int] -> Bool
isMenaik li 
  | length li == 1 || null li = True --jika panjang list kurang dari sama dengan 1
  | otherwise = head li < head (tail li) && isMenaik (tail li) --pengecekan elemen sebelum selalu lebih kecil
