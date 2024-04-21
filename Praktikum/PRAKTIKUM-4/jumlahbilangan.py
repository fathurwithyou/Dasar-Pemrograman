def solve(m, n):
    ans = 0
    for i in range(m, n+1):
        if i % 3 == 0 or i % 4 == 0:
            ans += 1
    return ans


ans = solve(int(input()), int(input()))
print(ans if ans else "Tidak Ada")
