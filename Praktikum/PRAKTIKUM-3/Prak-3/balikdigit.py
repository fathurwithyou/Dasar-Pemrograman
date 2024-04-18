n = int(input())
neg = n < 0
ans = 0
n = n if n > 0 else -n
while n:
    ans *= 10
    ans += n % 10
    n //= 10

print(-ans if neg else ans)
