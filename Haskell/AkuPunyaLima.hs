module AkuPunyaLima where
solve :: Int -> Bool
mainSolve :: Int -> Int -> Int -> Bool

mainSolve m pangkat cur
  | cur == m = True
  | 5^(pangkat-1) > m = False
  | otherwise = mainSolve m (pangkat+1) (cur+5^pangkat) || mainSolve m (pangkat+1) cur || mainSolve m (pangkat+1) (cur-5^pangkat)

solve m = mainSolve m 1 1 || mainSolve m 1 0 || mainSolve m 1 (-1)

optm :: Integer -> Bool
optm n 
  | n == 0 = True
  | mod n 5 > 2 = False
  | otherwise = optm (div n 5) 
opt :: Integer -> Bool
opt n = optm (n+596046447753906)

moreOpt :: Integer -> Bool
moreOpt n 
  | n == 0 = True
  | mod n 5 == 0 || mod n 5 == 1 = moreOpt (div n 5)
  | mod n 5 == 4 = moreOpt (div (n+1) 5)
  | otherwise = False
