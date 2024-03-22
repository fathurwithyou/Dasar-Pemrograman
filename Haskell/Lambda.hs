module Lambda where

konso :: Float -> [Float] -> [Float]
konso e li = [e] ++ li

konsDot :: [Float] -> Float -> [Float]
konsDot li e = li ++ [e]

addOne :: Int -> Int -> (Int -> Int -> Int) -> Int
addOne a b f 
 | a > b = 0
 | otherwise = f a b + addOne (a+1) b f
-- DEFINISI DAN SPESIFIKASI
mul :: Float -> Float -> Float
-- mul a b mengeluarkan a * b
p :: Float -> Float -> Float
-- p a b mengeluarkan a + b
dec :: Float -> Float
-- dec a mengeluarkan a-3
offsetList :: (Float -> Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{-offsetList(f,g,a,b)  menerima masukan dua buah fungsi, misalnya f dan
g, serta dua buah bilangan riil (float), a dan b. Fungsi mengeluarkan list of Float€ý,€ý,-}
-- REALISASI
mul a b = a * b
p a b = a + b
dec a = a - 2

offsetList f g a b
  | a > b = []
  | otherwise = konsDot (offsetList f g a (g b)) (g (f a b))


	{-
offsetList (\x y -> if x*y > x+y then x+y else 10) (\x -> x-1) 5 10
offsetList (\a x-> x+x/a) (\x -> x/2) 3 10	
offsetList (\a x -> x*a*a) (\x -> x-1) 2 10
		-}
