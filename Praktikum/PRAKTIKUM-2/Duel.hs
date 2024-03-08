module Duel where

duel :: [String] -> [String]
duel li
 | null li = []
 | head li == "desperado" = ["BANG"] ++ duel (tail li)
 | otherwise = [head li] ++ duel (tail li)