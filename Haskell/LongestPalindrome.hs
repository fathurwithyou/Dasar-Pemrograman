module LongestPalindrome where


isPalindrome :: [Char] -> Bool
isPalindrome li
  | length li <= 1 = True
  | head li /= last li = False
  | otherwise = isPalindrome (tail (init li))

longestPalindrome :: [Char] -> [Char]
longestPalindrome s
  | isPalindrome s = s
  | length left > length right = left
  | otherwise = right
  where
    left = longestPalindrome (tail s)
    right = longestPalindrome (init s)
