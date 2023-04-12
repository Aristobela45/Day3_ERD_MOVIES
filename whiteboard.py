# You will be given an array of numbers. You have to sort the odd numbers
# in ascending order while leaving the even numbers at their original positions.

# Examples
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [1, 8, 7, 6, 5, 4, 3, 2, 9, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

def solution(arr):
    num2 = []
    for num in arr:
        if num % 2 != 0:
            num2.append(num)
    num2.sort()
    num3 = 0
    for i in range(len(arr)):
        if arr[i] % 2 != 0:
            arr[i] = num2[num3]
            num3 += 1
    return arr
