module PrefixSumOpt where

pref :: [Int] -> Int -> [Int]
pref li a n 
  | null li = []
  | otherwise = a ++ pref (tail li) (a + head li)

prefixSum :: [Int] -> [Int]
prefixSum [] = []
prefixSum li = pref (tail li) (head li) 
