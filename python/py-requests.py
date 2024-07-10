
import requests


class Test:
    def fun(self):
        ret = requests.get("https://localhost/test/php/a.php", verify=False );

        print(ret.text)


Test().fun()
