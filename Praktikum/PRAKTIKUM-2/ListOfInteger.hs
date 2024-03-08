module ListOfInteger where
{- isMember(li, x) yang menerima masukan sebuah list of integer, 
misalnya l, dan sebuah integer, misalnya x, 
dan menghasilkan true jika x adalah salah satu member (anggota) dalam list l. Menghasilkan false jika tidak, atau jika list l kosong.-}
isMember :: [Int] -> Int -> Bool
isMember li a
 | null li = False
 | a == head li = True
 | otherwise = isMember (tail li) a