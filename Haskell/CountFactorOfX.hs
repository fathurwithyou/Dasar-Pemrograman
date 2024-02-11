module CountFactorOfX where

countFactorOfX :: Int -> [Int] -> Int
countFactorOfX n l 
 | null l = 0
 | head l == 0 = countFactorOfX n (tail l)
 | otherwise = if mod n (head l) == 0
  then 1 + countFactorOfX n (tail l)
  else 0 + countFactorOfX n (tail l)
