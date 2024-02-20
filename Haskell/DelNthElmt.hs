module DelNthElmt where
import Debugging ( debug, printf )


delNthElmt :: Int -> [Int] -> [Int]
delNthElmt n l
  | null l = [] 
  | n == 0 = tail l
  | otherwise = [head l] ++ delNthElmt (n-1) (tail l) 

-- remove :: Int -> [Char] -> [Char]
-- remove _ [] = []
-- remove 0 (x:xs) = xs
-- remove n (x:xs) = x : remove (n-1) (xs)