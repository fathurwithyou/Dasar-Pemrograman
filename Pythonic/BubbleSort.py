from typing import List


def bubble_sort(arr: List[int], n: int) -> List[int]:
    for i in range(n):
        for j in range(n-i-1):
            if arr[j] > arr[j+1]:
                arr[j+1], arr[j] = arr[j], arr[j+1]
    return arr
