stacked :: [Char] -> [Char] -> Bool
stacked li st
 | null li && null st = True
 | null li = False 
 | head li == '(' || head li == '[' || head li == '{' = stacked (tail li) (st ++ [head li])
 | null st = False
 | rounded || square || curly = stacked (tail li) (init st)
 | otherwise = False
 where
  square = head li == ']' && last st == '['
  rounded = head li == ')' && last st == '('
  curly = head li == '}' && last st == '{'

kurungBenar :: [Char] -> Bool
kurungBenar li = stacked li []

{-
"()[]"

li = "()[]"
st = ""

li = ")[]"
st = "("

li = "[]"
st = ""

li = "]"
st = "["

li = ""
st = ""

st = "((("
st.pop()
st = "(("

-}