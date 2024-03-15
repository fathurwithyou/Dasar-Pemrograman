module MaxNb where


maxList :: [Int] -> Int
maxList li
 | null(tail li) = head li
 | otherwise = max (head li) (maxList (tail li))

nbX :: Int -> [Int] -> Int

{- nbX x l menghasilkan banyaknya kemunculan x pada l -}
nbX e li
 | null li = 0
 | head li == e = 1 + nbX e (tail li)
 | otherwise = nbX e (tail li)
maxNb :: [Int] -> (Int, Int)
maxNb li = (maxList li, nbX (maxList li) li)