module IsGanjil where

isGanjil :: Int -> Bool
isGanjil n 
  | n == 0 = False
  | n == 1 = True
  | otherwise = isGanjil (n-2)
