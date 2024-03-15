 module IsPalindrom where


isPalindrom :: [Char] -> Bool
isPalindrom li
  | length li <= 1 = True
  | head li /= last li = False
  | otherwise = isPalindrom (tail (init li))
