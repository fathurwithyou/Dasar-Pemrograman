n = int(input())
a = list(map(int, input().strip().split()))

maxi = 0
mode = 0
for i in range(n):
  cnt = 0
  for j in range(n):
    if a[i] == a[j]:
      cnt += 1
  if cnt > maxi:
    mode = a[i]
    maxi = cnt
  elif cnt == maxi and a[i] < mode:
    mode = a[i]
print(mode)

'''
5
1 2 3 4 4

5
1 2 3 5 4
'''