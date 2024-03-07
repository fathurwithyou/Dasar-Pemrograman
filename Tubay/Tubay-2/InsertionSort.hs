pengurut :: Int -> [Int] -> [Int]
pengurut e li
 | null li = [e]
 | e <= head li = [e] ++ li
 | otherwise = [head li] ++ pengurut e (tail li)

insertionSort' :: [Int] -> [Int] -> [Int]
insertionSort' li ans
 | null li = ans
 | otherwise = insertionSort' (tail li) (pengurut (head li) ans)

insertionSort :: [Int] -> [Int]
insertionSort li
 | null li = []
 | otherwise = pengurut (head li) (insertionSort (tail li))

--APLIKASI
{-

pengurut 5 [1,2,3] -> [1,2,3,5]
pengurut 2 [1,2,3] -> [1,2,2,3]

8 [1,6,7]
[1] ++ pengurut 8 [6,7]
[1] ++ [6] ++ pengurut 8 [7]
[1] ++ [6] ++ [7] pengurut 8 []
[1] ++ [6] ++ [7] ++ [8]

[1] ++ pengurut 5 [6,7]
[1] ++ [5] ++ [6,7]


-}