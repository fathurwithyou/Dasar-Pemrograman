arr = [5, 6, 10, 10, 4, 9, 6, 4, 7, 2]
n = len(arr)

print(f"Before: {arr}")
for i in range(n):
  for j in range(n-i-1):
      if arr[j] > arr[j+1]:
          arr[j+1], arr[j] = arr[j], arr[j+1]
print(f"After: {arr}")