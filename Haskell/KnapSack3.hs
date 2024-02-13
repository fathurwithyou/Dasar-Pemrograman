module KnapSack3 where

takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n - 1) (tail li)

maxi :: Int -> Int -> Int
maxi n m
  | n > m = n
  | otherwise = m

knapSack :: Int -> Int -> [Int] -> [Int] -> [Int] -> Int
knapSack n w val wt st
  | n == -1 || w == 0 = 0
  | takeNth n wt > w = knapSack (n - 1) w val wt st
  | takeNth n st == 1 = maxi ambilLanjut lanjut
  | otherwise = maxi ambilLanjut (maxi lanjut ambilTerus)
  where
    ambilLanjut = takeNth n val + knapSack (n - 1) (w - takeNth n wt) val wt st
    lanjut = knapSack (n - 1) w val wt st
    ambilTerus = takeNth n val + knapSack n (w - takeNth n wt) val wt st

knapSack3 :: Int -> Int -> [Int] -> [Int] -> [Int] -> Int
knapSack3 n = knapSack (n - 1)