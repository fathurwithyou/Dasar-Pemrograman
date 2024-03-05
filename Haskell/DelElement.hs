module DelElement where

delElement :: Int -> [Int] -> [Int]
	{-prekondisi elemen l unik (hanya muncul sekali)-}

--REALISASI
delElement e li
  | null li = []
  | e == head li = tail li
  | otherwise = [head li] ++ delElement e (tail li)

--APLIKASI
--delElement 13  [7,3,9,13,15,14]
