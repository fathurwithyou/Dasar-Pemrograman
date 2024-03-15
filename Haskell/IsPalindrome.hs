module IsPalindrome where

isPalindrome :: [Char] -> Bool
isPalindrome li
  | length li <= 1 = True
  | head li /= last li = False
  | otherwise = isPalindrome (tail (init li))
