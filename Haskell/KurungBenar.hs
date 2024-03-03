module KurungBenar where

stacked :: [Char] -> [Char] -> Bool
stacked li st
  | null li && null st = True
  | null li = False
  | head li == '(' || head li == '[' || head li == '{' = stacked (tail li) (st ++ [head li])
  | rounded || square || curly = stacked (tail li) (init st)
  | otherwise = False
  where
    rounded = head li == ')' && last st == '('
    square = head li == ']' && last st == '['
    curly = head li == '}' && last st == '{'

kurungBenar :: [Char] -> Bool
kurungBenar li = stacked li []


-- kurungBenar ['(',')']
-- kurungBenar ['(',')','[',']','{','}']
-- kurungBenar ['(',']']
-- kurungBenar ['(','[',')',']']
