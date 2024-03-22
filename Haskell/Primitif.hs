-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

filterGanjil :: [Int] -> [Int]
{-filterGanjil(li) mengeluarkan elemen yang hanya berisi elemen ganjil. Fungsi dapat mengeluarkan list kosong-}
filterGanjil li
  | isEmpty li = []
  | mod (head li) 2 == 1 = konso (head li) (filterGanjil (tail li))
  | otherwise = filterGanjil (tail li)

getSmallest :: [Int] -> Int
getSmallest li
  | isOneElmt li = head li
  | head li < head (tail li) = getSmallest (konsDot (tail li) (head li))
  | otherwise = getSmallest (tail li)

isAllPos :: [Int] -> Bool
{-isAllPos(li) mengembalikan true apabila seluruh elemen li adalah positif. Fungsi mengembalikan true jika li kosong-}
isAllPos li
  | isEmpty li = True
  | otherwise = head li > 0 && isAllPos (tail li)

acakList :: [Int] -> [Int]
{-acakList(li) mengeluarkan list yang sudah diacak, contoh [1,2,3,4] menjadi [1,4,2,3] dan [1,2,3,4,5] menjadi [1,5,2,4,3]-}
acakList li
  | isEmpty li = []
  | isOneElmt li = [head li]
  | otherwise = konso(head li) (konso(last li) (acakList(tail(init li))))

isFactor :: Int -> [Int] -> Bool
{-isFactor(x,li) mengecek apakah jumlah seluruh elemen pada li dapat dibagi oleh x-}
isFactor x li
  | isOneElmt li = mod (head li) x == 0
  | otherwise = isFactor x (konso (head li + head (tail li)) (tail (tail li)))

--CONTOH APLIKASI
-- [(-1), (-3), 0, ]
--
