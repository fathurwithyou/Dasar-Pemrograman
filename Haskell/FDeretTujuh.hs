fDeretTujuh :: Int -> Int
fDeretTujuh n
  | n == 1 = 1
  | otherwise = (5*n-4) + fDeretTujuh(n-1)
