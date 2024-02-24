module CoinChange3 where

coinChange3 :: Int -> [Int] -> Int
coinChange3 n val
 | n == 0 = 1
 | null val || n < 0 = 0
 | otherwise = ambilTerus + lanjut
  where
   ambilTerus = coinChange3 (n-head val) val 
   lanjut = coinChange3 n (tail val)
