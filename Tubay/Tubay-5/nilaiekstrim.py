def findMax(n: int, arr: list) -> int:
    maxi = arr[0]
    for i in range(1, n):
        if arr[i] > maxi:
            maxi = arr[i]
    return maxi


def findMin(n: int, arr: list) -> int:
    mini = arr[0]
    for i in range(1, n):
        if arr[i] < mini:
            mini = arr[i]
    return mini


def isExist(n: int, arr: list, x: int) -> int:
    for i in range(n):
        if x == arr[i]:
            return True
    return False


# input
n = int(input())
arr = [0 for _ in range(n)]
for i in range(n):
    arr[i] = int(input())
x = int(input())

if isExist(n, arr, x):
    maxi = findMax(n, arr)
    mini = findMin(n, arr)
    if x == maxi and x == mini:
        print('maksimum')
        print('minimum')
    elif x == maxi:
        print('maksimum')
    elif x == mini:
        print('minimum')
    else:
        print('N#A')
else:
    print(x, 'tidak ada')
