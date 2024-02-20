module TebakTigaAngka where

max2 :: Int -> Int -> Int
max2 a b 
  | a > b = a
  | otherwise = b

max4 :: Int -> Int -> Int -> Int -> Int
max4 a b c d =
  max (max2 a b) (max2 c d)

tebakTigaAngka :: Int -> Int -> Int -> Int -> (Int, Int, Int)
tebakTigaAngka a b c d 
  | a == max4 a b c d = (a - b, a - c, a - d)
  | b == max4 a b c d = (b - a, b - c, b - d)
  | c == max4 a b c d = (c - a, c - b, c - d)
  | otherwise = (d - a, d - b, d - c)