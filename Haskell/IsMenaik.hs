module IsMenaik where

isMenaik :: [Int] -> Bool
isMenaik li 
  | length li == 1 || null li = True
  | otherwise = head li <= head (tail li) && isMenaik (tail li)
