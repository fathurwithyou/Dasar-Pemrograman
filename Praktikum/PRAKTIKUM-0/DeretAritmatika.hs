module DeretAritmatika where

deretAritmatika :: Int -> Int -> Int -> Float
deretAritmatika n a b = n' * (2 * a' + (n' - 1) * b') / 2
  where
    n' = fromIntegral n
    a' = fromIntegral a
    b' = fromIntegral b
