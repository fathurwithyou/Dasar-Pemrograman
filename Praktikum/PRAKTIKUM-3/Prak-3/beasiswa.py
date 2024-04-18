ip = float(input())
income = float(input())

ans = 0
if ip >= 3.5:
    ans = 4
elif ip < 3.5 and income < 1:
    ans = 1
elif 1 <= income < 5 and ip < 3.5:
  if ip >= 2:
    ans = 3
  else: ans = 2
print(ans)