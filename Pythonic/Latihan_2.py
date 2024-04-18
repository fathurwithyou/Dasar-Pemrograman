# 1
arr = [0 for _ in range(101)]

# 2
n = int(input())
for _ in range(n):
  print("Hello")
  
# 3
keluar = False
while not keluar:
  print("1. Menampilkan \"Hello World\" di layar")
  print("2. Membaca 2 integer dan menampilkan hasil penjumlahannya")
  print("3. Keluar")
  c = int(input())
  if c == 1:
    print("Hello World")
  elif c == 2:
    a, b = map(int, input().split())
    print(a+b)
  elif c == 3:
    keluar = True

# 4
n = int(input())
arr = [0 for _ in range(n)]
i = 0
while i < n:
  c = int(input())
  if c != 9999:
    arr[i] = c
  else:
    i += n
  i += 1
