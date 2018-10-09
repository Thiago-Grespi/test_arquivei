from selenium import webdriver as driver

class login_element_map(object):
    chromedriver = driver.Chrome()

    def input_login():
        return self.chromedriver.find_element_by_id('login-email')

    def input_senha():
        return self.chromedriver.find_element_by_id('login-password')

    def btn_entrar():
        return self.chromedriver.find_element_by_id('login-submit')