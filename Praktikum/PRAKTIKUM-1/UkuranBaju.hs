module UkuranBaju where

ukuranBaju :: Int -> Int -> Int
ukuranBaju h w
  | h <= 150 = 1
  | h > 150 && h <= 170 && w <= 80 = 2
  | h > 170 && w > 60 && w <= 80 = 3
  | h > 150 && h <= 170 && w > 80 = 3
  | h > 170 && w <= 60 = 2
  | otherwise = 4
