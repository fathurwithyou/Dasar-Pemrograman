n = int(input())
if n <= 0:
  print('Tidak valid')
  exit()
arr = list(map(int, input().split()))
x = int(input())

mini = 10**9
mini2 = 10**9
for i in range(n):
  if arr[i] > x:
    if arr[i] <= mini:
      mini2 = mini
      mini = arr[i]
    elif arr[i] < mini2:
      mini2 = arr[i]
print(mini2 if mini2 != 10**9 else -1)

'''
5
4 1 -4 8 1
0

6
2 8 3 1 3 5
7
'''