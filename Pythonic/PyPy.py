ans = 0
for i in range(0, 10):
  for j in range(0, 10):
    if (20000+1000*i+100*j+10*i+2) % 3 == 0:
      print(f"{i}{j}{i}")
      ans += 1

print("total", ans)