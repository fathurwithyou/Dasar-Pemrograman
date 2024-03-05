module SortList where

insert :: Int -> [Int] -> [Int]
insert x li 
 | null li = [x]
 | x <= head li = [x] ++ li
 | otherwise = [head li] ++ insert x (tail li)

sortList :: [Int] -> [Int]
sortList li 
 | null li = []
 | otherwise = insert (head li) (sortList (tail li))
