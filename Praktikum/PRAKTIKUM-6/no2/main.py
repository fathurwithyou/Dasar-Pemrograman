import tester
tester.start("output.txt")
file = open("output.txt", "w")
s = input()
a = 0
i = 0
u = 0
e = 0
o = 0
res = ""
for c in s:
    if c == '.':
        break
    if c.lower() == 'a':
        a += 1
    if c.lower() == 'i':
        i += 1
    if c.lower() == 'u':
        u += 1
    if c.lower() == 'e':
        e += 1
    if c.lower() == 'o':
        o += 1
    res += c
    
arr = []    
arr.append("%d%d%d%d%d\n" % (a,i,u,e,o))
arr.append(str(a+i+u+e+o)+"\n")
if a+i+u+e+o == 0:
    arr.append("Tidak ada huruf")
else:
    arr.append(res)
file.writelines(arr)
file.close()
tester.end("output.txt")