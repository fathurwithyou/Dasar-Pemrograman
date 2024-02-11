module SplitList where

splitList :: [Int] -> ([Int], [Int])
splitList li = (splitListPos li,splitListNeg li)

splitListPos :: [Int] -> [Int]
splitListPos li
  | null li = []
  | otherwise = 
    if head li >= 0 
      then head li : splitListPos (tail li)
    else splitListPos (tail li)

splitListNeg :: [Int] -> [Int]
splitListNeg li
  | null li = [] 
  | otherwise = 
    if head li < 0 
      then head li : (splitListNeg (tail li))
    else splitListNeg (tail li)