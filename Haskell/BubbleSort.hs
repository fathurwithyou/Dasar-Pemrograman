module BubbleSort where

takeNth :: Int -> [Int] -> Int
takeNth n li
  | n == 0 = head li
  | otherwise = takeNth (n-1) (tail li)

makeList :: Int -> Int -> [Int] -> [Int] -> [Int]
makeList l r li l2
  | l <= r = makeList (l+1) r li (l2 ++ [takeNth l li])
  | otherwise = l2

swappedList :: [Int] -> Int -> Int -> [Int]
swappedList li l r = makeList 0 (l-1) li [] ++ [takeNth r li] ++ [takeNth l li] ++ makeList (r+1) (length li - 1) li []

bubbleSort :: [Int] -> Int -> Int -> [Int]
bubbleSort li i j
  | i == -1 = li
  | j == i = bubbleSort li (i-1) 0
  | takeNth j li > takeNth (j+1) li = bubbleSort (swappedList li j (j+1)) i (j+1)
  | otherwise = bubbleSort li i (j+1)

sort :: [Int] -> [Int]
sort li = bubbleSort li (length li - 1) 0