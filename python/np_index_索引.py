
import numpy as np


class Test:
    def fun(self):
        a = np.array([11, 22, -33, 44, -55]);

        # 选择, 指定位置的,元素
        b = a[[1, 3]]; # 
        c = a[a > 10 ] # 先通过,判断, true/false--布尔索引. 再选

        print(b)
        print(c)

    
        a = np.array([[1,2,3],[4,5,6], [7,8,9]])

        b = a[[1,2,0], [0,1,0]]; # 第一个数组,代表行号. 第二个数组,代表列号
        # b = a[np.array([1,2]), np.array([0,1]) ];

        print(b)

Test().fun()
