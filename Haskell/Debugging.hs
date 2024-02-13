module Debugging where

import Debug.Trace (trace)
import Text.Printf (PrintfType, printf)
import Text.Printf qualified as TP (PrintfType, printf)

debug :: (Show a) => a -> String -> a
debug expr message = trace ("\n" ++ message ++ " - " ++ show expr) expr

printList :: [Int] -> String
printList lst = TP.printf "[%s]" (unwords (map show lst))

printf :: (PrintfType r) => String -> r
printf = TP.printf