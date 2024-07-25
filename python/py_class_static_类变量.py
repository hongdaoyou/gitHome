
# import re


class Test:
    a = 0;
    def fun(self):
        Test.a = Test.a + 1;
        
        self.a +=10;

        print(self.a)


Test().fun()
Test().fun()
Test().fun()

print(Test.a);
