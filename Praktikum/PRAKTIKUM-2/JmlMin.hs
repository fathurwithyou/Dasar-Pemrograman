module JmlMin where


minList :: [Int] -> Int
minList li
 | null(tail li) = head li
 | otherwise = min (head li) (minList (tail li))

nbX :: Int -> [Int] -> Int
{- nbX x l menghasilkan banyaknya kemunculan x pada l -}
nbX e li
 | null li = 0
 | head li == e = 1 + nbX e (tail li)
 | otherwise = nbX e (tail li)

jmlMin :: [Int] -> (Int, Int)
jmlMin li = (minList li, nbX (minList li) li)