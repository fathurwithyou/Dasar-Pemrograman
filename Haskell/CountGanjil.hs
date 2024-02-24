module CountGanjil where

countGanjil :: [Int] -> Int
countGanjil li
  | null li = 0
  | mod (head li) 2 == 1 = 1 + countGanjil (tail li)
  | otherwise = countGanjil (tail li)
