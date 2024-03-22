module ListOfInteger where
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

nbX :: [Int] -> Int -> Int
nbX li x
  | null li = 0
  | head li == x = 1 + nbX (tail li) x
  | otherwise = nbX (tail li) x

isMember :: Int -> [Int] -> Bool
isMember x li
  | isEmpty li = False
  | otherwise = x == head li || isMember x (tail li)

removeElmt :: [Int] -> Int -> [Int]
removeElmt li x
  | isEmpty li = []
  | head li == x = tail li
  | otherwise = konso (head li) (removeElmt (tail li) x)

listCountN :: [Int] -> Int -> ([Int], Int)
listCountN li n 
  | isEmpty li = ([], 0)
  | nbX li (head li) == (n+1) = (removeElmt res (head li), cnt-1)
  | nbX li (head li) == n = (konso (head li) res, cnt+1)
  | otherwise = (res, cnt)
  where 
   (res, cnt) = listCountN (tail li) n

splitList :: [Int] -> ([Int], [Int])
splitList li
  | isEmpty li = ([], [])
  | isOneElmt li = (li, [])
  | otherwise = (konso (head li) left, konsDot (right) (last li))
  where
	  (left, right) = splitList (tail (init li))

splitListIF :: [Int] -> (Int -> Bool) -> ([Int], [Int])
splitListIF li f
  | isEmpty li = ([], [])
  | f (head li) = (konso (head li) left, right)
  | otherwise = (left, konso (head li) right)
  where
    (left, right) = splitListIF (tail li) f


