def GambarSegitiga(N):
    for i in range(N//2+1):
        for j in range(N-2*i-1):
            print(end=' ')
        for j in range(2*i+1):
            print(end='*')
        print()
    for i in range(N//2-1, -1, -1):
        for j in range(N-2*i-1):
            print(end=' ')
        for j in range(2*i+1):
            print(end='*')
        print()

def IsValid(N):
    return N > 0 and N & 2

N = int(input())
    
if IsValid(N): GambarSegitiga(N)
else:
    print("Masukkan tidak valid")
    
