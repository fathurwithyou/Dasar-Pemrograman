def absol(n: int) -> int:
  if n < 0:
    return n*-1
  return n

def minima(n: int, m: int) -> int:
  return n if n < m else m

n = int(input())
a = list(map(int, input().strip().split()))

mini = absol(a[0]-a[1])
for i in range(n):
  for j in range(i+1, n):
    mini = minima(absol(a[i]-a[j]), mini)
print(mini)

'''
3
100 40 -100

2
1 1
'''