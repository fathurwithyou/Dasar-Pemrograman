module TwoSum where

isExist :: [Int] -> Int -> Bool
isExist a b
  | null a = False
  | otherwise = (head a == b) || isExist (tail a) b

twoSum :: [Int] -> Int -> Bool
twoSum a b
  | null a = False
  | otherwise = isExist (tail a) (b - (head a)) || twoSum (tail a) b
