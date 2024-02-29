


module NbDuaPangkat where

isDuaPangkat :: Int -> Bool
isDuaPangkat n
 | n == 1 = True
 | mod n 2 == 1 = False
 | otherwise = isDuaPangkat (div n 2)

nbDuaPangkat :: Int -> Int -> Int
nbDuaPangkat a b
 | a > b = 0
 | isDuaPangkat a = 1 + nbDuaPangkat (a+1) b
 | otherwise = nbDuaPangkat (a+1) b
