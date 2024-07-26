
# import re


class Test:
    # 插槽
    __slots__ = ('a1', 'a2')
    def __init__(self):
        self.a1 = 10;


obj=Test()
print(obj.a1)

obj.a2=22