def findExact(n, x, arr):
    for i in range(n):
        if arr[i] == x:
            return x
    return "TIDAK ADA"


def findNear(n, x, arr):
    ans = arr[0]
    mini = abs(arr[0]-x)
    for i in range(n):
        if abs(arr[i]-x) < mini and arr[i] != x:
            ans = arr[i]
            mini = abs(arr[i]-x)
    return ans


def findLong(n, x, arr):
    ans = arr[0]
    maxi = abs(arr[0]-x)
    for i in range(n):
        if abs(arr[i]-x) > maxi and arr[i] != x:
            ans = arr[i]
            maxi = abs(arr[i]-x)
    return ans


n = int(input())
x = int(input())
arr = list(map(int, input().split()))

print(findExact(n, x, arr))
print(findNear(n, x, arr))
print(findLong(n, x, arr))
