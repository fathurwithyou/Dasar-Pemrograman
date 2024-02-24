module JamBangun where

jamBangun :: Int -> Int -> Int -> (Bool, Int, Int, Int)
	{-jamBangun(a,b,c)-}




absol :: Int -> Int
absol n
  | n < 0 = (-1)*n
  | otherwise = n
--7.45.00
--REALISASI

jamBangun h m d
  | total > 85500= (True, hour, mnt, sec)
  | total < 27900 = (True, hour, mnt, sec)
  | otherwise = (False, absol hour, absol mnt, absol sec)
	  where
		 total = h*3600+m*60+d
		 hour = div (absol(27900-total)) 3600
		 mnt = div (mod (absol (27900-total)) 3600) 60
		 sec = (mod (mod (absol (27900-total) )3600) 60)
		 total1 = 114300
		 hour1 = div (absol(total1-total)) 3600
		 mnt1 = div (mod (absol (total1-total)) 3600) 60
		 sec1 = (mod (mod (absol (total1-total) )3600) 60)

		 
--APLIKASI
-- jamBangun 07 15 00
