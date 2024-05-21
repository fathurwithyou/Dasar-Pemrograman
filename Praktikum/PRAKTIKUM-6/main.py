# import tester
# tester.start("input.txt")
file = open("input.txt", "r")
file = file.readlines()
if int(file[0]) <= 0:
    print("Jumlah layer: 0}")
else:
    i = 1
    cnt = 1
    while i < 4*int(file[0]):
        print("Layer ke: %d" % (cnt))
        print("Fungsi aktivasi: %s" % (file[i]))
        i += 1
        print(f"Jumlah neuron: {file[i]}")
        arr = []
        for i in range(i, i+int(file[i])):
            arr.append()
        cnt += 2
# tester.end("input.txt")
