module MergeList where

mergeList :: [Int] -> [Int] -> [Int]
mergeList li1 li2 
  | null li1 = li2
  | null li2 = li1
  | head li1 <= head li2 = head li1 : mergeList (tail li1) (li2)
  | otherwise = head li2 : mergeList (li1) (tail li2)