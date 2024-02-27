module IsInCircle where

isInCircle :: Float -> Float -> Float -> Float -> Float -> Bool
isInCircle x1 y1 r x2 y2 = (x1-x2)^2 + (y1-y2)^2 <= r^2


