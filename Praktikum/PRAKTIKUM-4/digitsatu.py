def sumDigit(n):
  return n%10+sumDigit(n//10) if n != 0 else 0

n = int(input())
arr = list(map(int, input().split()))
ans = 0
for i in range(n):
  num = arr[i]
  while num >= 10:
    num = sumDigit(num)
    ans += 1
print(ans)
'''
4
12392 30 5 0

5
1 2 3 4 5
'''