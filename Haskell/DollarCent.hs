-- KONVERSI DALAM BENTUK DOLLAR DAN SEN
-- DEFINISI DAN SPESIFIKASI
dollarCent :: Int -> Int -> Int -> Int -> (Int, Int)
{- dollarCent(q,d,n,p) mengembalikan hasil konversi
dalam bentuk (dollar, sen)-}

-- REALISASI
dollarCent q d n p = (div total 100, mod total 100)
  where
    total = q * 25 + d * 10 + n * 5 + p

-- APLIKASI
-- dollarCent 8 20 30 77