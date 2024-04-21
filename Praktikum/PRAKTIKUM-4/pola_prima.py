def isPrime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True


def gambar(n):
    pr = [[0 for _ in range(n)] for _ in range(n)]
    m = n
    i = 0
    num = 1
    while m:
        if isPrime(num):
            for j in range(n-i):
                pr[i+j][j] = num
                pr[j][i+j] = num
            m -= 1
            i += 1
        num += 1
    for i in range(n):
        for j in range(n):
            print(pr[i][j], end="")
            if j != n-1:
                print(end=" ")
        print()


def isValid(n):
    return n >= 1


n = int(input())
if isValid(n):
    gambar(n)
else:
    print('Tidak valid')
