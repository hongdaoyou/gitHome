
# import re
import math
import matplotlib.pyplot as plt
import numpy as np



class Test:
    def fun(self):

        plt.title("对数")

        # x = np.arrange(-10, 10, 1);
        x = np.arange(0, 10000, 1).astype(float) ; # 必须转换成,浮点数

        plt.plot(x, np.log(x), label='log(x)')  
        plt.plot(x, np.log10(x), label='log10(x)')  


        plt.legend(); # 画出,图示
        plt.show()

        print(1)


Test().fun()
