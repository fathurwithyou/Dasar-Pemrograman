module SetOperation where

isMember :: Int -> [Int] -> Bool
isMember e li
 | null li = False 
 | e == head li = True
 | otherwise = isMember e (tail li)

intersection :: [Int] -> [Int] -> [Int] -> [Int]
intersection a b res 
  | null a = res
  | isMember (head a) b = intersection (tail a) b (res ++ [head a])
  | otherwise = intersection (tail a) b res

subtraction :: [Int] -> [Int] -> [Int]
subtraction a b
  | null a = []
  | isMember (head a) b = subtraction (tail a) b
  | otherwise = [head a] ++ subtraction (tail a) b

uni :: [Int] -> [Int] -> [Int]
uni a b
 | null b = a
 | isMember (head b) a = uni a (tail b)
 | otherwise = uni (a ++ [head b]) (tail b)

setOperation :: [Int] -> [Int] -> Char -> [Int]
setOperation a b c
 | c == 'U' = uni a b
 | c == 'I' = intersection a b []
 | otherwise = subtraction a b

