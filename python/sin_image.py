
# import re
import math
import matplotlib.pyplot as plt
import numpy as np

class Test:
    def fun(self):

        # 
        # x = range(-2*math.pi, 2*math.pi, 100); # 不能传入,浮点数,及个数
        # x = range(-10, 10, 100);
        
        x = np.linspace(-2*math.pi, 2*math.pi, 100);

        # plt(x, math.sin(x)) # sin,属于,np
        # plt(x, np.sin(x))  # plt,是 一个对象

        # plt.plot(x, np.sin(x))

        # plt.title("sin 图像")

        plt.plot(x, np.sin(x), label='sin(x)')  # 必须指定label
        plt.plot(x, np.cos(x), label='cos(x)')  # 必须指定label

        plt.legend(); # 画出,图示
        # plt.grid() # 网格线
        plt.show()

        print(1)


Test().fun()
