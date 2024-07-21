
# import re
import numpy as np;

class Test:
    def fun(self):
        # a=[11,22, 44, 33];
        a=[[11,22, 44, 33],[11,222, 44, 33]];
        # a=[[[11,22, 44, 33],[11,222, 44, 33]], [[111,22, 44, 33],[11,222, 44, 33]] ];

        print(np.shape(a));
        b = np.argmax(a, 0).shape;

        print(b)


Test().fun()
