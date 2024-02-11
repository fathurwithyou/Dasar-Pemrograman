module DeretSegitiga where

deretSegitiga :: Int -> Int
deretSegitiga n 
  | n == 1 = 1
  | otherwise = deretSegitiga(n-1) + n

