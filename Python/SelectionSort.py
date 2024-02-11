arr = [5, 6, 10, 10, 4, 9, 6, 4, 7, 2]
n = len(arr)

print(f"Before: {arr}")
for i in range(n):
    maxi = i # simpan indeks maksimum
    for j in range(i, n):
        if arr[j] > arr[maxi]:
            maxi = j
    arr[i], arr[maxi] = arr[maxi], arr[i]
print(f"After: {arr}")
