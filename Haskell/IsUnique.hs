module IsUnique where

isMember :: Char -> [Char] -> Bool
isMember e li
  | null li = False
  | e == head li = True
  | otherwise = isMember e (tail li)

isUnique :: [Char] -> Bool
isUnique li
  | null li = True
  | otherwise = not (isMember (head li) (tail li)) && isUnique (tail li)
