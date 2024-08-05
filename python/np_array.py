
# import re

import numpy as np

class Test:
    def fun(self):
        a = [11, 22, 33];

        b = np.asarray(a);

        print(b, type(b))

        c = np.array(a);
        print(c, type(c))


Test().fun()
