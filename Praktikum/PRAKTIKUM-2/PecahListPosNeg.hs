module PecahListPosNeg where


neg :: [Int] -> [Int]
neg li
 | null li = []
 | head li < 0 = [head li] ++ neg (tail li)
 | otherwise = neg (tail li)

pos :: [Int] -> [Int]
pos li
 | null li = []
 | head li >= 0 = [head li] ++ pos (tail li)
 | otherwise = pos (tail li)

pecahListPosNeg :: [Int] -> ([Int], [Int])
pecahListPosNeg li = (pos li, neg li)