
# import re

import numpy as np;

class Test:
    def fun(self):

        # a = np.array([[0, 33, 22, 2],[11, 33, 22, 2]] );
        a = np.array([0, 33, 22, 2, 11, 33, 22, 2] );

        # c = a.view().reshape(-1,2);
        c = a.reshape(-1,2);

        a[0]=111;
        # c = a.view(-1,2);
        print(a)
        
        print(c)


Test().fun()
