n: int = int(input())
a: list = list(map(int, input().strip().split()))

cnt: int = 0
pos: int = 0
for i in range(1, n):
  if a[i] > a[pos]:
    pos = i
  if a[i] < a[i-1]:
    cnt += 1
if cnt <= 1:
  if cnt == 1 and n == pos + 1:
    print('Tidak')
  else:
    print(n-pos-1)
else:
  print("Tidak")

'''
5
5 1 2 3 4

5
5 2 1 3 4

2 
1 1

5
3 5 4 6 7
'''