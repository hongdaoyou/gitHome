
# import re

import numpy as np

class Test:
    def fun(self):
        a = [1, 2, 3];

        b = [[4],[5], [6]]

        c =  np.array(a) +np.array(b)

        print(c, type(c))


Test().fun()

