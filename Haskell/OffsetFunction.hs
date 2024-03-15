plusOne :: Int -> Int
plusOne n = n + 1

plusTwo :: Int -> Int
plusTwo n = n + 2

sumRange :: Int -> Int -> (Int -> Int) -> (Int -> Int) -> Int
sumRange a b f g
 | a > b = 0
 | otherwise = (g a) + sumRange (f a) b f g