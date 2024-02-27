module GabungList where


gabungList :: [Int] -> [Int] -> [Int]
gabungList fi se
  | null fi = se
  | null se = fi
  | head fi < head se = [head fi] ++ gabungList (tail fi) se
  | otherwise = [head se] ++ gabungList fi (tail se)
