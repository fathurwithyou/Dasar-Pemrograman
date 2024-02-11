arr = [5, 6, 10, 10, 4, 9, 6, 4, 7, 2]
n = len(arr)

# cari nilai minimum dan maksimum
mini = arr[0]
maxi = arr[0]
for i in range(1, n):
    if arr[i] < mini: mini = arr[i]
    if arr[i] > maxi: maxi = arr[i]

print(f"Before: {arr}")
# buat tabel counter
counter = [0 for _ in range(maxi-mini+1)]
for i in range(n):
    counter[arr[i]-mini] += 1

# memasukkan nilai ke sebuah array secara berurutan
idx = 0
for i in range(maxi-mini+1):
    if counter[i] != 0:
        for j in range(counter[i]):
            arr[idx] = i+mini
            idx += 1
print(f"After: {arr}")
