isPrime :: Int -> Int -> Bool
isPrime n factor
 | n <= 1 = False
 | factor * factor > n = True
 | mod n factor == 0 = False
 | otherwise = isPrime n (factor+1)


goldbachConj :: Int -> Int -> [(Int, Int)]
goldbachConj n candidate
 | candidate >= div n 2 = []
 | isPrime candidate 3 && isPrime (n-candidate) 3 = [(candidate, n-candidate)] ++ goldbachConj n (candidate+2)
 | otherwise = goldbachConj n (candidate+2)

goldbach :: Int -> [(Int, Int)]
goldbach n = goldbachConj n 3
