module CountGanjil where

countGanjil :: [Int] -> Int
countGanjil li
  | null li = 0 --jika list sudah habis/kosong
  | mod (head li) 2 == 1 = 1 + countGanjil (tail li) --jika ganjil
  | otherwise = countGanjil (tail li) --jika genap
