
# import re
import math
import matplotlib.pyplot as plt
import numpy as np



class Test:
    def fun(self):

        plt.title("指数")

        # x = np.arrange(-10, 10, 1);
        x = np.arange(-10, 10, 1).astype(float) ; # 必须转换成,浮点数

        plt.plot(x, np.exp(x), label='exp(x)')  

        plt.plot(x, 2 ** x, label='2^x') 

        plt.legend(); # 画出,图示
        plt.show()

        print(1)


Test().fun()
