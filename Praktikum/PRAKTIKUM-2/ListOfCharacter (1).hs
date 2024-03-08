module ListOfCharacter where

pajakMakan :: [Char] -> [Int] -> [Char]
pajakMakan li la
 | null li = []
 | 1.1 * fromIntegral (head la) <= 200 = [head li] ++ pajakMakan (tail li) (tail la)
 | otherwise = pajakMakan (tail li) (tail la)