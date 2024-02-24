
-- DoubleFactorial - doubleFactorial n
module DoubleFactorial where

-- Definisi dan spesifikasi
doubleFactorial :: Int -> Int

-- Realisasi
doubleFactorial n 
 | n == 0 || n == 1 = 1
 | n < 0 = error "Undefined for negative input."
 | otherwise = n * doubleFactorial (n-2)

