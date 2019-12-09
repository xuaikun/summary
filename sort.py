# 定义选择排序 A 算法
def select_sort(A):
    length = A.shape[1]
    for position_i in range(1, length - 1):
        max_position = position_i
        for position_j in range(position_i + 1, length):
            if A[0][max_position] < A[0][position_j]:
                max_position = position_j
        tmp = A[0][max_position]
        A[0][max_position] = A[0][position_i]
        A[0][position_i] = tmp
    return

# 定义选择排序 A 对二维列表排序，从第1个开始
def select_sort_Numsort(array):
    length = len(array)
    for position_i in range(0, length - 1):
        min_position = position_i
        for position_j in range(position_i + 1, length):
            if array[min_position][1] > array[position_j][1]:
                min_position = position_j
        tmp = array[min_position][1]
        temp1 = array[min_position][0]
        array[min_position][1] = array[position_i][1]
        array[min_position][0] = array[position_i][0]
        array[position_i][1] = tmp
        array[position_i][0] = temp1
    return
