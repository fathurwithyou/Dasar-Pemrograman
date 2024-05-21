def counter(s, arr):
    cnt = 0
    for i in arr:
        if i == s:
            cnt += 1
    return cnt

import tester
tester.start("input.txt")
file = open("input.txt", "r")

arr = file.readlines()
one = arr[0].split()
two = arr[1].split()
buah = []
for i in one:
    if i not in buah:
        buah.append(i)
found = False
for i in buah:
    kiri = counter(i, one)
    kanan = counter(i, two)
    if kiri and kanan:
        found = True
        print("%s,%d,%d" % (i, kiri, kanan))
if not found:
    print("Tidak ada kata yang sama")

tester.end("input.txt")