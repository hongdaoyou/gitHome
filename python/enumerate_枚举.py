
# import re


class Test:
    def fun(self):
        a = { 'a1':11, 'a2':22 }
        b = enumerate(a)  # <enumerate object at 0x7fd101248980>

        print(list(b)) # [(0, 'a1'), (1, 'a2')]


Test().fun()
