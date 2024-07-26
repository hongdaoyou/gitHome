
# import re


class Test:
    def __new__(cls, *args, **kwargs):
        print("now...");
        instance = super().__new__(cls);
        return instance;

    def __init__(self):
        print("init...")


obj=Test()

# print(obj._Test__a)