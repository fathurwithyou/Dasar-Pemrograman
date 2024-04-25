n = 0
kurus = 0
besar = 0
summ = 0
benar = 0
while n != -999:
    n = int(input())
    if 30 <= n <= 200:
        summ += n
        benar += 1
        if n <= 50:
            kurus += 1
        elif n >= 100:
            besar += 1
if benar > 0:
  print(benar)
  print(kurus)
  print(besar)
  print(round(summ/benar))
else:
  print("Data kosong")