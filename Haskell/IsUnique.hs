module IsUnique where

isMember :: Char -> [Char] -> Bool
isMember e li
  | null li = False
  | e == head li = True
  | otherwise = isMember e (tail li)

checkUnique :: Char -> [Char] -> Bool
checkUnique e li
  | isMember e li = False
  | otherwise = True

isUnique :: [Char] -> Bool
isUnique li
  | null li = True
  | otherwise = checkUnique (head li) (tail li) && isUnique (tail li)