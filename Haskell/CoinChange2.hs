module CoinChange2 where

mini :: Int -> Int -> Int
mini a b
 | a > b = b
 | otherwise = a

coinChange2 :: Int -> [Int] -> Int
coinChange2 n val
 | n == 0 = 0
 | null val || n < 0 = 10^6
 | otherwise = mini ambilTerus lanjut 
	where
		 ambilTerus = 1 + coinChange2 (n-head val) val 
		 lanjut = coinChange2 n (tail val)
