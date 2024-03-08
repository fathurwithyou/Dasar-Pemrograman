module AlternateSort where

insert :: Int -> [Int] -> [Int]
insert x li 
 | null li = [x]
 | x <= head li = [x] ++ li
 | otherwise = [head li] ++ insert x (tail li)

insertionSort :: [Int] -> [Int]
insertionSort li 
 | null li = []
 | otherwise = insert (head li) (insertionSort (tail li))

uni :: [Int] -> [Int] -> [Int]
uni li la 
 | null li = []
 | null la = li
 | otherwise = [head li, head la] ++ uni (tail li) (tail la)

div2 :: [Int] -> Int -> [Int]
div2 li n
 | mod n 2 == 0 && div n 2 == length li = []
 | mod n 2 == 1 && div n 2 == length li-1 = []
 | otherwise = [last li] ++ div2 (init li) n

div1 :: [Int] -> Int -> [Int]
div1 li n
 | div n 2 == length li = []
 | otherwise = [head li] ++ div1 (tail li) n

alternateSort :: [Int] -> [Int]
alternateSort li = uni (div1 (insertionSort li) panjang) (div2 (insertionSort li) panjang)
 where panjang = length li