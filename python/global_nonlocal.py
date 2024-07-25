
# import re

# 全局的变量
a = 11
class Test:
    def fun(self):
        # 引用全局的变量
        # global a
 
        a=22
        def f1():
            # 引用,闭包中的变量
            nonlocal a 
            a = 33
            print(a)

        f1()
        print(a)

Test().fun()
print(a)
