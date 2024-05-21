def find(s, arr):
    for i in range(len(arr)):
        if arr[i][0] == s:
            return i
    return -1

import tester
tester.start("input.csv")
file = open("input.csv", "r")
# Tulis program kalian disini jika ingin mengumpulkan

dept = []
arr = file.readlines()
file.close()
if len(arr) <= 1:
    print("Data kosong")
else:
    for i in range(1, len(arr)):
        tmp = arr[i].split(',')
        depart = tmp[1]
        salary = int(tmp[2])
        idx = find(depart, dept)
        if idx == -1:
            dept.append([depart, salary])
        else:
            dept[idx][1] += salary
    avg = 0
    for i in dept:
        print(i[1])
        avg += i[1]
    print(int(avg/len(dept)))
# Tidak perlu menambahkan tester jika ingin running di local kalian
tester.end("input.csv")