module NbKelipatanX where

nbKelipatanX :: Int -> Int -> Int -> Int
nbKelipatanX m n x
  | m > n = 0
  | mod m x == 0 = 1 + nbKelipatanX (m+x) (n) x
  | otherwise = nbKelipatanX (m+1) n x
