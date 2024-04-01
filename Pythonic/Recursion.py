def fact(n: int) -> int:
  return n * fact(n-1) if n > 0 else 1

print(fact(int(input())))