module TwoSum where

exist :: [Int] -> Int -> Bool
exist a b
  | null a = False
  | otherwise = (head a == b) || exist (tail a) b

twoSum :: [Int] -> Int -> Bool
twoSum a b
  | null a = False
  | otherwise = exist (tail a) (b - (head a)) || twoSum (tail a) b
