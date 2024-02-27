module KurungBenar where

stacked :: [Char] -> [Char] -> Bool
stacked li st 
  | null li && null st = True
  | null li = False
  | head li == '(' || head li == '[' || head li == '{' = stacked (tail li) (st ++ [head li])
  | head li == ')' = 
	  if last st == '(' 
		 then stacked (tail li) (init st)
		 else False
  | head li == ']' =
	  if last st == '['
	     then stacked (tail li) (init st)
		 else False
  | otherwise =
	  if last st == '{'
	     then stacked (tail li) (init st)
		 else False

kurungBenar :: [Char] -> Bool
kurungBenar li = stacked li []

-- isValid ['(',')']
-- isValid ['(',')','[',']','{','}']
-- isValid ['(',']']
-- isValid ['(','[',')',']']
