# Program BelahKetupat
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar belah ketupat sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

def GambarBelahKetupat(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar belah ketupat dengan panjang diagonal mendatar sebesar N
#      sesuai spesifikasi soal
    half = N//2
    for i in range(1, half+2):
      for j in range(half-i+1):
        print(end=" ")
      for j in range(2*i-1):
        print(end="*")
      print()
    for i in range(half, 0, -1):
      for j in range(half-i+1):
        print(end=" ")
      for j in range(2*i-1):
        print(end="*")
      print()

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
    return N > 0 and N & 1

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarBelahKetupat(N)
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")