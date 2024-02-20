module DasPro where
dasPro :: Int -> Int -> Int -> Int -> Int
dasPro das pro x y
  | das * x > pro * y = das * x
  | otherwise = pro *y
