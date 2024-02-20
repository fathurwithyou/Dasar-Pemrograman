-- JUMLAH DETIK
-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
{- jumlahDetik(j,m,d) menghasilkan nilai konversi ke dalam jumlah detik yang dimulai dari 00:00:00 dari j m d yang diberikan. -}

-- REALISASI
jumlahDetik j m d = j * 3600 + m * 60 + d

-- APLIKASI
-- jumlahDetik 0 12 56
-- jumlahDetik 2 4 5