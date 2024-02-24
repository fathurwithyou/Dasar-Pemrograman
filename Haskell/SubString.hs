module SubString where

subString :: [Char] -> Int -> Int -> [Char]
subString li l r
  | r == 0 = [head li]
  | l == 0 = [head li] ++ subString (tail li) l (r-1)
  | otherwise = subString (tail li) (l-1) (r-1)
