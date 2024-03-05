module GetSmallest where

getSmallest :: [Int] -> Int
getSmallest' :: Int -> [Int] -> Int

--REALISASI
getSmallest' e li
  | null li = e
  | e > head li = getSmallest' (head li) (tail li)
  | otherwise = getSmallest' e (tail li)
getSmallest li = getSmallest' (head li) (tail li)
--APLIKASI
--getSmallest [7,3,9,13,15,14]
