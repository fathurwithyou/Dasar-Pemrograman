module UbahArah where

ubahArah :: Int -> Int -> Int
-- REALISASI
ubahArah s r
  | hasil < 0 = 360+hasil
  | otherwise = mod hasil 360
  where
	  hasil = s+r

-- APLIKASI
-- ubahArah 50 100
-- ubahArah 350 100
