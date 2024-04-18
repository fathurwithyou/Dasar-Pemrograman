# b = int(input())
# n = int(input())
# p = int(input())
b = int(input())
n = int(input())
p = int(input())

total = p*25
if n:
    total = p*100

if p <= 4:
    total *= 0.9
elif p <= 10:
    total *= 0.85
elif p <= 20:
  total *= 0.8
elif p <= 30:
  total *= 0.75
else:
  total *= 0.7

if b >= total:
    print("YA")
    print(f"{b-total:.2f}")
else:
    print("TIDAK")
    print(f"{total-b:.2f}")
