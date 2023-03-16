import scipy.signal as signal

# 中值滤波，输入信号边界补零运算
def median_filter(dat_i, width = 9):
    dat_i_r = []
    mid_arr = []
    dat_o = []
    for i in range(1 + width//2, len(dat_i) + width//2 +1): # 
        if i <= width: # 前width-1个元素，补零滤波
            dat_i_r = dat_i[0:i]
            dat_i_r += [0 for _ in range(width - len(dat_i_r))]
        elif i <= len(dat_i) : # 中间width个元素，不用补零
            dat_i_r = dat_i[i-width:i]
        else: # 后width-1个元素，补零滤波
            dat_i_r = dat_i[i - width:len(dat_i)]
            dat_i_r += [0 for _ in range(width - len(dat_i_r))] 
        mid_arr = bubbleSort(dat_i_r)
        mid_val = mid_arr[width//2]
        dat_o.append(mid_val)
    return dat_o

def bubbleSort(arr_i): 
    arr_o = arr_i
    for i in range(1, len(arr_o)): 
        for j in range(0, len(arr_o)-i): 
            if arr_o[j] > arr_o[j+1]: 
                arr_o[j], arr_o[j + 1] = arr_o[j + 1], arr_o[j] 
    return arr_o 

if __name__ == '__main__':
    width = 9
    if not median_filter([5 ,3, 4], width = width) \
        == list(signal.medfilt([5 ,3, 4],width)):
        print('-'*20,'\n', 'Test 0 failed')
    elif not median_filter([5 ,3, 4, 2, 1], width = width) \
        == list(signal.medfilt([5 ,3, 4, 2, 1],width)):
        print('-'*20,'\n', 'Test 1 failed')
    elif not median_filter([5 ,3, 4, 2, 1, 5 ,3, 4, 2, 1], width = width) \
        == list(signal.medfilt([5 ,3, 4, 2, 1, 5 ,3, 4, 2, 1],width)):
        print('-'*20,'\n', 'Test 2 failed')
    else:
        print('-'*20,'\n', 'All test passed')
