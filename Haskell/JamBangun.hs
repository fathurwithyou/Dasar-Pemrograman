module JamBangun where


jamBangun :: Int -> Int -> Int -> (Bool, Int, Int, Int)
jamBangun h m d =
    let
        bangun = h * 3600 + m * 60 + d
        dosen = 7 * 3600 + 45 * 60
        selisih
            | bangun > dosen = bangun - dosen
            | otherwise = dosen - bangun
        hh = div selisih 3600
        mm = div (mod selisih 3600) 60
        dd = mod selisih 60
    in
        (bangun < dosen, hh, mm, dd)

