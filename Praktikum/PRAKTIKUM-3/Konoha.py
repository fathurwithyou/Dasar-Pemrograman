def count(n):
    return n % 2 + count(n//2) if n else 0


print(count(int(input())))