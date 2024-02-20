module FilterGanjil where

filterGanjil :: [Int] -> [Int]
filterGanjil li
  | null li = []
  | mod (head li) 2 == 1 = head li : filterGanjil (tail li)
  | otherwise = filterGanjil (tail li)