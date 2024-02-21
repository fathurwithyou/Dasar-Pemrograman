module CoinChange where

mini :: Int -> Int -> Int
mini a b
 | a > b = b
 | otherwise = a

coinChange :: Int -> [Int] -> Int
coinChange n val
 | n == 0 = 0
 | null val || n < 0 = 10^6
 | otherwise = mini ambilTerus lanjut 
	where
		 ambilTerus = 1 + coinChange (n-head val) val 
		 lanjut = coinChange n (tail val)
