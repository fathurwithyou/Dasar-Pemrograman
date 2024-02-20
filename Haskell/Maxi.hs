module Maxi where

mainMaxi :: Int -> [Int] -> Int
mainMaxi x li
  | null li = x
  | head li > x = mainMaxi (head li) (tail li)
  | otherwise = mainMaxi x (tail li)

maxi :: [Int] -> Int
maxi li = mainMaxi (head li) (tail li)