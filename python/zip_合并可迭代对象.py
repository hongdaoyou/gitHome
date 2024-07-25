
# import re


class Test:
    def fun(self):
        a = [111, 22];
        b = (111, 33);

        # 合并,多个可迭代对象
        c = zip(a, b);

        # print(list(c))
        # print(type(c))

        # 访问
        for a in c:
            print(a)

Test().fun()
