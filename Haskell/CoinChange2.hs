module CoinChange2 where

coinChange2 :: Int -> [Int] -> Int
coinChange2 n val
 | n == 0 = 1
 | null val || n < 0 = 0
 | otherwise = ambilTerus + lanjut
	 where
		 ambilTerus = coinChange2 (n-head val) val 
		 lanjut = coinChange2 n (tail val)
