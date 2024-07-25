
# import re


class Test:
    def __init__(self):
        self.__a = 10;

    # 获取,属性
    @property
    def get_a(self):
        return self.__a

    # 更改属性
    # @property.setter
    @get_a.setter
    def set_a(self, val):
        self.__a = val;

    # 删除,属性
    @get_a.deleter
    def del_a(self):
        del self.__a

    def fun(self):

        print(1)


obj = Test()

obj.set_a = 20
del obj.del_a
print(obj.get_a )
