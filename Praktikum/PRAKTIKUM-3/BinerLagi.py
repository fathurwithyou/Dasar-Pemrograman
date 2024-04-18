n = int(input())

dec = inc = -1
idx = 0
m = n
while m:
    if m % 2 and dec == -1:
        dec = idx
    if m % 2 == 0 and dec != -1:
        inc = idx
    idx += 1
    m //= 2

if inc != -1 and dec != -1:
    print(n+2**inc-2**dec)
else:
    print(n)
