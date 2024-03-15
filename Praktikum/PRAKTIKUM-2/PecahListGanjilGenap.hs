module PecahListGanjilGenap where

ganjil :: [Int] -> [Int]
ganjil li
 | null li = []
 | mod (head li) 2 == 1 && head li > 0 = [head li] ++ ganjil (tail li)
 | otherwise = ganjil (tail li)

genap :: [Int] -> [Int]
genap li
 | null li = []
 | mod (head li) 2 == 0 && head li > 0 = [head li] ++ genap (tail li)
 | otherwise = genap (tail li)

neg :: [Int] -> [Int]
neg li
 | null li = []
 | head li <= 0 = [head li] ++ neg (tail li)
 | otherwise = neg (tail li)

pecahListGanjilGenap :: [Int] -> ([Int], [Int], [Int])
pecahListGanjilGenap li = (neg li, ganjil li, genap li)
