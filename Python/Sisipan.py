a = input()
b = input()
c = input()
file = open('angka.txt', 'r')
txt = file.readlines()
file.close()
ans = ""
for i in range(len(txt)):
    ans += txt[i]
    if txt[i].rstrip() == a and txt[i+1].rstrip() == c:
        ans += f'{b}\n'
file = open('angka.txt', 'w')
file.write(ans)
file.close()