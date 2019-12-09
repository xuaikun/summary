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
