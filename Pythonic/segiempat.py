n = int(input())
c1 = input()
c2 = input()

if c1 != c2 and n > 0:
    for i in range(1, 1+n):
        for j in range(1, 1+n):
            if i == 1 or j == 1 or i == n or j == n:
                print(c1, end="")
            else:
                print(c2, end="")
        print()
else:
    print("Masukan tidak valid")

"""
1
@
#

2
@
#

3
@
#

5
*
+

7
*
+
"""
