-- sumAll :: [Int] -> Int
-- sumAll li
--  | null li = 0
--  | otherwise = head li + sumAll (tail li)

-- prefixSum :: [Int] -> [Int]
-- prefixSum li
--  | null li = []
--  | otherwise = prefixSum (init li) ++ [sumAll li]

{-
[1,2,3,4]
[4+3+2+1] = [10]
[1+2+3] ++ [10] = [6,10]
[1+2] ++ [6,10] = [3,6,10]
[1] ++ [3,6,10] = [1,3,6,10]
O(N^2)


[1,5,6,5]
   ^
prev = 1
[head li + prev] ++ 
prev = head li + prev
O(N)
-}

prefixSum' :: [Int] -> Int -> [Int]
prefixSum' li prev
 | null li = []
 | otherwise = [prev + head li] ++ prefixSum' (tail li) (prev + head li)

prefixSum :: [Int] -> [Int]
prefixSum li = [head li] ++ prefixSum' (tail li) (head li)
