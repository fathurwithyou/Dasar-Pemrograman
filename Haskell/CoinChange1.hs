module CoinChange1 where

coinChange1 :: Int -> [Int] -> Int -> Bool
coinChange1 n val k
 | n == 0 && k == 0 = True
 | null val || n < 0 = False
 | otherwise = ambilLanjut || lanjut 
 where
   ambilLanjut = coinChange1 (n-head val) (tail val) (k-1) 
   lanjut = coinChange1 n (tail val) k
