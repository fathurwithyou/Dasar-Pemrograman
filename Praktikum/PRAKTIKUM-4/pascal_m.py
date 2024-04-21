n = int(input())
m = int(input())

dp = [[0 for _ in range(n)] for _ in range(n)]

for i in range(n):
  for j in range(i+1):
    if j == 0 or j == i:
      dp[i][j] = m
    else:
      dp[i][j] = dp[i-1][j] + dp[i-1][j-1]
    print(dp[i][j],end="")
    if j != i:
      print(end=" ")
  print()