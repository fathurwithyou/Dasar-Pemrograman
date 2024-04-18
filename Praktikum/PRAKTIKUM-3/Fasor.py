for i in range(int(input())):
  r, l, c = map(int, input().split())
  if not r or l == c:
    print("SUMBU")
  elif l > c:
    print("SATU")
  else:
    print("EMPAT")