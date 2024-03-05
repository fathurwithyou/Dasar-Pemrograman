module OffsetList where

id :: Float -> Float 
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
	{-offsetList(f,g,a,b). Fungsi offsetList akan menghasilkan sebuah list of float yang merupakan penerapan fungsi f terhadap bilangan float antara a dan b, dimulai dari a dengan increment menggunakan fungsi g-}
p1 :: Float -> Float
p2 :: Float -> Float

id x = x
p1 x = x + 1
p2 x = x + 2

offsetList f g a b
  | a > b = []
  | otherwise = [f a] ++ offsetList f g (g a) b

--APLIKASI
--offsetList id p1 1 5
--offsetList p1 p2 5 10

{- JAWABAN BAGIAN B

offsetList (\x -> x) (\x -> x+2) 1.2 7.1
offsetList (\x -> if x < 0 then -999 else x+32) (\x -> x+0.5) (-1) 1

-}
