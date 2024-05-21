import tester


def bubble(arr):
    n = len(arr)
    for i in range(n):
        for j in range(i+1, n):
            if arr[j] < arr[i]:
                arr[j], arr[i] = arr[i], arr[j]


tester.start("input.csv")
file = open("input.csv", "r")

arr = file.readlines()
age = []
cnt_nilai = 0
for i in range(1, len(arr)):
    tmp = arr[i].split(',')
    nilai = int(tmp[3])
    if nilai > 75:
        cnt_nilai += 1
    age.append(int(tmp[2]))
age = list(set(age))
bubble(age)
print(cnt_nilai)

    
file.close()

tester.end("input.csv")
