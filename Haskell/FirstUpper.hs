module FirstUpper where

isUpper :: Char -> Bool
isUpper c = c >= 'A' && c <= 'Z'

firstUpper :: [Char] -> Int
firstUpper li
  | isUpper (head li) == True = 1
  | otherwise = 1 + firstUpper (tail li)
