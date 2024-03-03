from typing import List


def selection_sort(arr: List[int], n: int) -> List[int]:
    for i in range(n):
        maxi = i  # simpan indeks maksimum
        for j in range(i, n):
            if arr[j] > arr[maxi]:
                maxi = j
        arr[i], arr[maxi] = arr[maxi], arr[i]
    return arr
