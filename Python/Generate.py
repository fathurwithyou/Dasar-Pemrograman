import random

arr = [f"{i}\n" for i in range(1,1000)]
print(arr)
random.shuffle(arr)
arr = "".join(arr)
with open('angka.txt', 'w') as file:
  file.write(arr)
file.close()