takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n-1) (tail li)

maxi :: Int -> Int -> Int
maxi n m 
  | n > m = n
  | otherwise = m

knapSack :: Int -> Int -> [Int] -> [Int] -> Int
knapSack n w val wt
  | n == 0 || w == 0 = 0
  | takeNth (n-1) wt > w = knapSack (n-1) w val wt
  | otherwise = maxi (takeNth (n-1) val + knapSack (n-1) (w-takeNth(n-1) wt) val wt) (knapSack (n-1) w val wt)