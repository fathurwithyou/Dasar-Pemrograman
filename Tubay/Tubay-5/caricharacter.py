def small(n: int, arr: list) -> int:
    '''
    F.S.: indeks urutan, -1 artinya tak terdefinisi
    '''
    for i in range(n):
        if 97 <= ord(arr[i]) <= 122:
            return i

    return -1


def large(n: int, arr: list) -> int:
    for i in range(n):
        if 65 <= ord(arr[i]) <= 90:
            return i

    return -1


def ex(n: int, arr: list) -> int:
    for i in range(n):
        if not (65 <= ord(arr[i]) <= 90 or 97 <= ord(arr[i]) <= 122):
            return i

    return -1


# input
n = -1
while n <= 0:
    n = int(input())
    if n <= 0:
        print("Masukan salah. Ulangi!")

# proses
arr = [0 for _ in range(n)]
for i in range(n):
    arr[i] = input()
cc = input()
if cc == 'S' or cc == 's':
    out = small(n, arr)
    if out == -1:
        print("Tidak ada huruf kecil")
    else:
        print(out+1, arr[out])
elif cc == 'L' or cc == 'l':
    out = large(n, arr)
    if out == -1:
        print("Tidak ada huruf besar")
    else:
        print(out+1, arr[out])
elif cc == 'X' or cc == 'x':
    out = ex(n, arr)
    if out == -1:
        print("Semua huruf")
    else:
        print(out+1, arr[out])
else:
    print('Tidak diproses')

'''
-(p v q)
-1
8
A
B
a
C
%
#
7
*
S

3
A
B
C
L

3
a
#
$
L
'''
