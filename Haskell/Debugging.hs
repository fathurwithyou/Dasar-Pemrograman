module Debugging where

import Debug.Trace ( trace )
import Text.Printf ( printf )

debug :: c -> String -> c
debug = flip trace

printList :: [Int] -> String
printList lst = printf "[%s]" (unwords (map show lst))