module CoinChange4 where

coinChange :: Int -> [Int] -> [[Int]] -> [[Int]]
coinChange n val res
  | n == 0 = res
  | null val || n < 0 = []
  | otherwise = ambilTerus ++ lanjut
  where
    ambilTerus = coinChange (n - head val) val (addHeadToAll (head val) res)
    lanjut = coinChange n (tail val) res

addHeadToAll :: Int -> [[Int]] -> [[Int]]
addHeadToAll _ [] = []
addHeadToAll x yss = [head yss ++ [x]] ++ addHeadToAll x (tail yss)

coinChange4 :: Int -> [Int] -> [[Int]]
coinChange4 n val = coinChange n val [[]]



