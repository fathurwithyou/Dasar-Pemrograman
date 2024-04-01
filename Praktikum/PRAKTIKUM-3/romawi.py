def romanToInt(s):
    arr = [0, 0, 100, 500, 0, 0, 0, 0, 1, 0, 0, 50,
           1000, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 10, 0, 0]

    res = 0

    for i in range(len(s)):
        if i < len(s) - 1 and arr[ord(s[i])-ord('A')] < arr[ord(s[i+1])-ord('A')]:
            res -= arr[ord(s[i])-ord('A')]
        else:
            res += arr[ord(s[i])-ord('A')]

    return res


print(romanToInt(input()))
