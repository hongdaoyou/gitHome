
# import re

from selenium import webdriver

class Test:
    def fun(self):

        # 浏览器
        browser = webdriver.Chrome()

        url = "https://localhost/a.html"

        # 打开一个url
        # doc = selenium.openUrl(url)
        browser.get(url);
        
        # 通过选择器,获取具体的按钮. 然后,再点击
        btn = doc.getElementById("id")

        btn.click();


Test().fun()
