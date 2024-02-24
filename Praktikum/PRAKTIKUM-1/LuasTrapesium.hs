module LuasTrapesium where

--DEFINISI DAN SPESIFIKASI
luasTrapesium :: Float -> Float -> Float -> Float
	{-luasTrapesium(t,s1,s2) menerima 3 buah masukan float
	   dan mengeluarkan luas dari trapesium-}

--REALISASI
luasTrapesium t s1 s2 = (s1+s2)*t/2
--APLIKASI
--luasTrapesium 2 4 3
