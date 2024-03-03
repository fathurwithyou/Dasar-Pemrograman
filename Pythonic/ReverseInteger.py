file = open('angka.txt', 'r')
txt = file.readlines()
file.close()
ans = ""
for i in range(len(txt)):
    n = int(txt[i].rstrip())
    length = 0
    num = 0
    while n:
        num = num*10 + n % 10
        n //= 10
        length += 1
    ans += f"{txt[i].rstrip()}-{'0'*(length-len(str(num)))}{num}\n"
file = open('result.txt', 'w')
file.write(ans)
file.close()