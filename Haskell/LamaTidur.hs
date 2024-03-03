module LamaTidur where

lamaTidur :: Int -> Int -> Int -> (Bool, Int, Int, Int)

lamaTidur j m s =

    let detikMulai = 5*3600
        detikTidur = j*3600+m*60+s
        selisih = abs(detikMulai-detikTidur)
        sum = (24*3600-detikTidur) + detikMulai
        
    in  if detikMulai > detikTidur then (
            False,
            div selisih 3600,
            div (mod selisih 3600) 60,
            mod selisih 60)
        else (
            sum >= 6*3600,
            div sum 3600,
            div (mod sum 3600) 60,
            mod sum 60)
