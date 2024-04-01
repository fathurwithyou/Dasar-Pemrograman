def isValid(s: str) -> bool:
    stack = []
    for i in s:
        if i in ['(', '[', '{']:
            stack.append(i)
        elif not len(stack):
            return False
        elif i == ')' and stack[-1] == '(':
            stack.pop()
        elif i == ']' and stack[-1] == '[':
            stack.pop()
        elif i == '}' and stack[-1] == '{':
            stack.pop()
        else:
            return False
    return not len(stack)


s = input()
if isValid(s):
    print("valid")
else:
    print("tidak valid")

'''
()

()[]{}

({})

(]


'''
