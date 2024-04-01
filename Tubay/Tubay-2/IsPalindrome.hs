isPalindrome :: [Char] -> Bool
isPalindrome li
 | length li <= 1 = True
 | head li /= last li = False
 | otherwise = isPalindrome (init (tail li))
ww
{-
"kasurrusak"
asurrusa
-}