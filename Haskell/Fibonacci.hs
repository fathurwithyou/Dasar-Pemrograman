module Fibonacci where


mainFibo :: Int -> Int -> Int -> Int
mainFibo n a b 
  | n == 1 = b
  | otherwise = mainFibo (n-1) b (a+b)

fibo :: Int -> Int
fibo n = mainFibo n 0 1