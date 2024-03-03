def IsValid(r1, r2, r3, c):
    return r1 > 0 and r2 > 0 and r3 > 0 and (c == 'p' or c=='P' or c == 's' or c == 'S')

r1 = r2 = r3 = c = None
while True:
    r1 = float(input())
    r2 = float(input())
    r3 = float(input())
    c = input()
    if IsValid(r1, r2, r3, c):
        break   
    print("Masukan salah")

if c == 'p' or c =='P': print(f"{(r1*r2*r3/(r1*r2+r1*r3+r2*r3)):.2f}")
else: print(f"{(r1+r2+r3):.2f}")
