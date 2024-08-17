'''
    创建Chrome,对象,并且,配置成,无界面.设置,chromedriver的位置. get请求网址,通过选择器,获取元素.然后,输入信息,点击登录,跳转到新页面,再进行操作.
'''

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


class Test:
    def fun(self):
        # 服务
        chrome_driver_path = '/usr/local/bin/chromedriver'
        chrome_service = Service(chrome_driver_path)

        # 选项
        chrome_options = Options()
        chrome_options.add_argument("--headless")  # 可选：无界面模式
        chrome_options.add_argument("--ignore-certificate-errors")  # 禁用证书验证
        
        driver = webdriver.Chrome(service=chrome_service, options=chrome_options);

        # url = "https://localhost/a.html"
        url = "https://localhost/test/php/a.php"

        url = "http://127.0.0.1:2017/";

        # # 打开一个url
        # # doc = selenium.openUrl(url)
        driver.get(url);
        
        a=driver.page_source;
        # print(a)

        input = driver.find_elements(By.CSS_SELECTOR, '.input.is-success');
        # print(input);

        # 用户的密码
        input[0].send_keys('hdy');
        input[1].send_keys('123456');
        
        loginBtn = driver.find_element(By.CSS_SELECTOR, '.button.is-primary');
        # print(loginBtn);
        loginBtn.click();

        try:
            # 等待新页面加载，直到某个元素出现
            WebDriverWait(driver, 10).until(
                EC.presence_of_element_located((By.CSS_SELECTOR, '.b-tabs.main-tabs'))
            )

            # a=driver.page_source;
            # print(a)

        except Exception as e:
            print("Exception occurred:", str(e))


Test().fun()
