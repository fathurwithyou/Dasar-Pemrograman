--Author: Ellipsis
module KnapSack4 where

maxi :: Int -> Int -> Int -- take max val
maxi n m 
	| n > m = n
	| otherwise = m

knapSack :: Int -> Int -> [Int] -> [Int] -> [Int] -> Int
knapSack n w val wt cap 
	| n == -1 || w == 0 = 0
	| head wt > w = lanjut
	| head cap > 0 = maxi ambilLanjut (maxi lanjut ambilTerus) 
	| otherwise = lanjut
		where
		ambilLanjut = head val + knapSack (n-1) (w-head wt) (tail val) (tail wt) (tail cap)
		lanjut = knapSack (n-1) w (tail val) (tail wt) (tail cap)
		ambilTerus = head val + knapSack n (w-head wt) val wt ([head cap-1] ++ tail cap)

knapSack4 :: Int -> Int -> [Int] -> [Int] -> [Int] -> Int
knapSack4 n = knapSack (n-1)

{-
knapSack4 3 4 [1,2,3] [4,5,1] [0,0,1]
knapSack4 3 50 [60,100,120] [10,20,30] [2,1,1] 
knapSack4 4 10 [10,40,30,50] [5,4,6,3] [0,1,0,1] 
-}

