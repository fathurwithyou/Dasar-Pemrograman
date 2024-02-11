# n = int(input())
# arr = [0 for _ in range(n+1)]
# arr[0] = 0
# arr[1] = 1
# for i in range(2, n+1):
#   arr[i] = arr[i-1] + arr[i-2]
# print(arr[n])

# def fibo(n):
#   if n == 0: return 0
#   if n == 1 or n == 2: return 1
#   return fibo(n-1) + fibo(n-2)
arr = [-1 for _i in range(1000)]
arr[1] = 1
arr[0] = 0

def fibo(n):
  if n == 0: return 0
  if n == 1: return 1
  if arr[n] != -1:
    return arr[n]
  arr[n] = fibo(n-1) + fibo(n-2)
  return arr[n]
  
print(fibo(int(input())))