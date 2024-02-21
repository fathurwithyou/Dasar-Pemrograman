module InsertionSort where

insert :: Int -> [Int] -> [Int]
insert x li 
 | null li = [x]
 | x <= head li = [x] ++ li
 | otherwise = [head li] ++ insert x (tail li)

insertionSort :: [Int] -> [Int]
insertionSort li 
 | null li = []
 | otherwise = insert (head li) (insertionSort (tail li))
