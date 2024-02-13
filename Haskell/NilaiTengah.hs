-- NILAI TENGAH
-- DEFINISI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{- nilaiTengah(a,b,c) mengembalikan nilai
di antara nilai minimum dan maksimum
atau dengan kata lain mengembalikan nilai tengah -}
maxi :: Int -> Int -> Int
{- maxi(a,b) mengembalikan nilai maksimum-}
mini :: Int -> Int -> Int

{- mini(a,b) mengembalikan nilai maksimum-}

-- REALISASI
maxi n m
  | n > m = n
  | otherwise = m

mini n m
  | n < m = n
  | otherwise = m

nilaiTengah a b c = a + b + c - maks - minii
  where
    maks = maxi a (maxi b c)
    minii = mini a (mini b c)

-- APLIKASI
-- nilaiTengah 1 2 3
-- nilaiTengah (-6) 1 5
-- nilaiTengah (-1) (-4) 10