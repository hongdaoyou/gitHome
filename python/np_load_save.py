
import numpy as np


class Test:
    def fun(self):
        a = np.array([111, 22, 33])

        # np.save("1.npy", a)
        b = np.load("1.npy");

        print(b)


Test().fun()
