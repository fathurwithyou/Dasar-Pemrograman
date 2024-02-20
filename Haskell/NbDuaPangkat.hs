module NbDuaPangkat where
  
nbDuaPangkat' :: Int -> Int -> Int -> Int
nbDuaPangkat' a b base
  | base > b = 0 
  | base < a = nbDuaPangkat' a b (2*base)
  | otherwise = 1 + nbDuaPangkat' a b (2*base)

log2 :: Int -> Int
log2 n 
  | n == 0 || n == 1 = 0
  | otherwise = 1 + log2 (div n 2)

nbDuaPangkat :: Int -> Int -> Int
nbDuaPangkat a b = nbDuaPangkat' a b (2^(log2 a))

----------------------------------------------------

module NbDuaPangkat where
  
isDuaPangkat :: Int -> Bool
isDuaPangkat n
  | n == 1 = True
  | mod n 2 == 1 = False
  | otherwise = isDuaPangkat(div n 2)

nbDuaPangkat :: Int -> Int -> Int
nbDuaPangkat a b
  | a == b+1 = 0
  | isDuaPangkat a = 1 + nbDuaPangkat (a+1) b
  | otherwise = nbDuaPangkat (a+1) b
