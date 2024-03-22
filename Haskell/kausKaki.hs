kausKaki :: Int -> Int -> (Int,Int)
kausKaki n m
  | n > m = (m, div (n-m) 2)
  | otherwise = (n, div (m-n) 2)
