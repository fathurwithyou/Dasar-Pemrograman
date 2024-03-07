module ListOfCharacter where



delElmt :: Char -> [Char] -> [Char]
delElmt e li
  | null li = []
  | e == head li = delElmt e (tail li)
  | otherwise = [head li] ++ delElmt e (tail li)

makeUnique :: [Char] -> [Char]
makeUnique lc 
  | null lc = []
  | otherwise = [head lc] ++ makeUnique (delElmt (head lc) (tail lc))

--APLIKASI
--makeUnique ['k', 'k']
--makeUnique ['s', 'a', 'y', 'y', 'a', 's']
