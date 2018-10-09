import unittest
from selenium.webdriver.common.keys import Keys
from features.element_map.login_element_map import login_element_map

class login_page(login_element_map):

    def acessar_site_arquivei(self, url):
        super().chromedriver.get(url)

    def inserir_login(self, login):
        super().input_login().sendkeys(login)

    def inserir_senha(self, senha):
        super().input_senha().sendkeys(senha)

    def logar(self):
        super().btn_entrar().click()

    def verificar_pagina_inicial(self):
        self.assertTrue(super().getpagesource().is_text_present('Painel Principal') and super().current_url == "https://psel-app.arquivei.com.br/dashboard")

    def verificar_mensagem_erro(self):
        self.assertTrue(super().getpagesource().is_text_present('Falha ao entrar. E-mail ou senha inválidos.') and super().current_url == "https://psel-app.arquivei.com.br/index/login")