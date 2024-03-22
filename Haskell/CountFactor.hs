countFactor :: Int -> Int -> Int
countFactor a b
  | a > b = 0
  | mod b a == 0 = 1 + countFactor (a+1) b
  | otherwise = countFactor (a+1) b
