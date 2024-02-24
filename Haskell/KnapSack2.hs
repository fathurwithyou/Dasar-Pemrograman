module KnapSack2 where

takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n - 1) (tail li)

maxi :: Int -> Int -> Int
maxi n m
  | n > m = n
  | otherwise = m

knapSack :: Int -> Int -> [Int] -> [Int] -> Int
knapSack n w val wt
  | n == -1 || w == 0 = 0
  | takeNth n wt > w = knapSack (n - 1) w val wt
  | otherwise = maxi lanjut ambilTerus
  where
    lanjut = knapSack (n - 1) w val wt
    ambilTerus = takeNth n val + knapSack n (w - takeNth n wt) val wt

knapSack2 :: Int -> Int -> [Int] -> [Int] -> Int
knapSack2 n = knapSack (n - 1)
