def check(n: str) -> bool:
  return ord('A') <= ord(n) <= ord('Z')

def absol(n: int) -> int:
  if n < 0:
    return n*-1
  return n

n = input()
m = input()
if check(n) and check(m):
  r1 = absol(ord(n)-ord(m))
  r2 = 26 - r1
  if r2 < r1:
    print(r2)
  else:
    print(r1)
else:
  print("Tidak valid")