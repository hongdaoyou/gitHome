
# import re
import numpy as np


class Test:
    def fun(self):
        a = np.array([11, 22, 33])
        b = np.array([1, 2, 3])

        c = a + b;
        c = np.add(a,b)
        print(c)


Test().fun()
