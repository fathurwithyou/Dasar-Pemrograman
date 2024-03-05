module IsAllGanjil where

isAllGanjil :: [Int] -> Bool
isAllGanjil li
  | null li = True
  | otherwise = mod (head li) 2 == 1 && isAllGanjil (tail li)
