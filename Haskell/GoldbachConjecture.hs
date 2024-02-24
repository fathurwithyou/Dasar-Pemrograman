module GoldbachConjecture where

isPrime :: Int -> Int -> Bool 
isPrime n x
  | n == 1 || n == 0 = False
  | x * x > n = True
  | mod n x == 0 = False
  | otherwise = isPrime n (x+1)

goldbachConj :: Int -> Int -> [(Int, Int)]
goldbachConj n a
  | a == div n 2 = []
  | isPrime a 2 && isPrime (n-a) 2 = [(a, n-a)] ++ goldbachConj n (a+1)
  | otherwise = goldbachConj n (a+1)

goldbach :: Int -> [(Int, Int)]
goldbach n = goldbachConj n 3
