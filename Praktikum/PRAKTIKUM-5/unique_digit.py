def out(cnt: list) -> int:
  for i in range(1, 10**6):
    if not cnt[i]:
      return i

n = 0
arr = []
cnt = [0 for _ in range(10**6)]
while n != -9999:
  n = int(input())
  arr.append(n)

n = len(arr)
for i in range(n):
  cnt[arr[i]] = 1
  for j in range(i+1, n):
    cnt[arr[i]+arr[j]] = 1

print(out(cnt))
  
'''
1
1
1
-9999

1
10
3
11
6
15
-9999
'''