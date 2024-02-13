module SelectionSort where

takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n - 1) (tail li)

makeList :: Int -> Int -> [Int] -> [Int] -> [Int]
makeList l r li l2
  | l <= r = makeList (l + 1) r li (l2 ++ [takeNth l li])
  | otherwise = l2

swappedList :: [Int] -> Int -> Int -> [Int]
swappedList li l r
  | l /= r = makeList 0 (l - 1) li [] ++ [takeNth r li] ++ makeList (l + 1) (r - 1) li [] ++ [takeNth l li] ++ makeList (r + 1) (length li - 1) li []
  | otherwise = li

selectionSort :: [Int] -> Int -> Int -> Int -> [Int]
selectionSort li i j maxx
  | i == 0 = li
  | j == -1 = selectionSort (swappedList li maxx i) (i - 1) (i - 2) (i - 1)
  | takeNth j li > takeNth maxx li = selectionSort li i (j - 1) j
  | otherwise = selectionSort li i (j - 1) maxx

sort :: [Int] -> [Int]
sort li = selectionSort li n (n - 1) n
  where
    n = length li - 1