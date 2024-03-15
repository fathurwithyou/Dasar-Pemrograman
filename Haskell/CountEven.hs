countEven :: [Int] -> Int
countEven li
 | null li = 0
 | mod (head li) 2 == 0 = 1 + countEven (tail li)
 | otherwise = countEven (tail li)
