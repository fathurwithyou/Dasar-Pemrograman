-- APAKAH DATE VALID?
-- DEFINISI DAN SPESIFIKASI
isDateValid :: Int -> Int -> Int -> Bool
{- isDateValid(d,m,y) mengembalikan nilai true jika
d, m, y membentuk date yang valid. Definisi date yang
valid adalah jika elemen hari (d) bernilai antara 1
dan 31, tergantung pada bulan dan apakah tahun kabisat
atau bukan, elemen bulan (m) bernilai antara 1 dan 12,
dan elemen tahun (y) bernilai antara 0 dan 99.
Nilai y mewakili tahun 1900 s.d. 1999 -}

-- REALISASI
isDateValid d m y
  | d < 1 || d > 31 || m < 1 || m > 12 || y < 0 || y > 99 = False
  | m >= 8 -- Jika Agustus atau lebih
    =
      if mod m 2 == 0
        then d <= 31
        else d <= 30
  | m < 8 && m /= 2 -- Jika di bawah Agustus
    =
      if mod m 2 == 0
        then d <= 30
        else d <= 31
  | mod year 400 == 0 || (mod year 4 == 0 && mod year 100 /= 0) = d <= 29 -- Jika kabisat
  | otherwise = d <= 28 -- Jika bukan kabisat
  where
    year = 1900 + y

-- APLIKASI
-- isDateValid 29 2 4
-- isDateValid 31 4 5
-- isDateValid 31 9 4
