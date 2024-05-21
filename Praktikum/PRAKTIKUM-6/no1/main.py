import tester
tester.start("input.txt")
file = open("input.txt", "r")

arr = file.readlines()
if int(arr[0]) <= 0:
    print("Jumlah layer: 0")
else:
    print("MAMAH TOLONGGG")
    
file.close()
tester.end("input.txt")