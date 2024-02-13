module FindMode where

makeList :: Int -> [Int]
makeList 0 = []
makeList n = 0 : makeList (n - 1)

fillNth :: Int -> [Int] -> [Int] -> [Int]
fillNth n l1 l2
  | n == 0 = l2 ++ [head l1 + 1] ++ tail l1
  | otherwise = fillNth (n - 1) (tail l1) (l2 ++ [head l1])

takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n - 1) (tail li)

takeMode :: Int -> Int -> [Int] -> [Int] -> Int
takeMode res cnt counter li
  | null li = res
  | otherwise =
      if takeNth (head li) counter + 1 > cnt
        then takeMode (head li) (takeNth (head li) counter + 1) (fillNth (head li) counter []) (tail li)
        else takeMode res cnt (fillNth (head li) counter []) (tail li)

findMode :: [Int] -> Int
findMode li = takeMode (head li) 1 (fillNth (head li) (makeList 1001) []) (tail li)