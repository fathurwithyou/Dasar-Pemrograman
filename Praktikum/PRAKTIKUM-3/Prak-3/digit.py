cnt = 0
arr = [0 for i in range(10)]
while cnt < 100:
    n = int(input())
    if n < 0:
        break
    elif n == 0:
        arr[0] += 1
    while n:
        arr[n % 10] += 1
        n //= 10
    cnt += 1

print(cnt)
for i in range(10):
    if arr[i]:
        print("%d :" % i + " %d" % arr[i])

'''
3
123
245
0
567
12355
-7

0
199
3
1
-99
'''
