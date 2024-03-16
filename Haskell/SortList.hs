module SortList where

sortList :: [Int] -> [Int]
sortList li 
  | length li == 1 = [head li]
  | head li < head right = [head li] ++ right
  | otherwise = [head right] ++ sortList ([head li] ++ tail right)
  where
	  right = sortList(tail li)
