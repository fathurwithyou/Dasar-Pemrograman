module PrefixSum where

getSum :: [Int] -> Int
getSum li
  | null li = 0
  | otherwise = head li + getSum (tail li)

prefixSum :: [Int] -> [Int]
prefixSum [] = []
prefixSum li = prefixSum (init li) ++ [last li + getSum (init li)] 
