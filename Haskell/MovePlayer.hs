module MovePlayer where

movePlayer :: Int -> Int -> Char -> Bool -> (Int, Int)
movePlayer r c m j
  | m == 'R' =
	  if r == 5 && c == 5 && j
	     then (1, 1)
		 else if r == 5 && c == 5
			then (5, 5)
			else (r + div c 5, mod c 5 + 1)
  | otherwise = 
	  if r == 1 && c == 1 && j
		then (5,5)
		else if r == 1 && c == 1
			then (1,1)
			else if c == 1
				then (r-1, 5)
				else (r, c-1)

