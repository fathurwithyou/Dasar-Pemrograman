module IsEqFront where

isEqFront :: [Char] -> [Char] -> Bool
isEqFront t1 t2
  | null t1 = True
  | head t1 /= head t2 = False
  | otherwise = isEqFront (tail t1) (tail t2)