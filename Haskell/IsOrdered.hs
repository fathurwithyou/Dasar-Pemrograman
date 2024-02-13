module IsOrdered where

nbElmt :: [Int] -> Int
nbElmt l
  | null l = 0
  | otherwise = 1 + nbElmt (tail l)

isOrdered :: [Int] -> Bool
isOrdered l
  | nbElmt l == 1 = True
  | head l > head (tail l) = False
  | otherwise = isOrdered (tail l)