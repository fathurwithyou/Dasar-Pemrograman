module LenCollatz where
lenCollatz :: Int -> Int
lenCollatz n
 | n == 1 = 1
 | mod n 2 == 0 = 1 + lenCollatz (div n 2)
 | otherwise = 1 + lenCollatz(3*n + 1)

