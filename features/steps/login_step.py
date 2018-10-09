from behave import Given, When, Step, Then
from features.pages.login_page import login_page

login_page = login_page


#Scenario Outline: Realizar login com sucesso

@Given ('acesso o site da Arquivei pela "{url}"')
def acessar_site_arquivei(context, url):
    login_page.acessar_site_arquivei(url)

@And ('insiro meu "{login}" e "{senha}"')
def inserir_login_senha(context, login, senha):
    login_page.inserir_login(login)
    login_page.inserir_senha(senha)

@When ('clico para entrar no sistema')
def logar(context):
    login_page.logar()

@Then ('a página principal deve ser exibida')
def verificar_pagina_inicial(context):
    login_page.verificar_pagina_inicial()


#Scenario Outline: Tentar logar com usuário inexistente

@Given ('acesso o site da Arquivei pela "{url}"')
def acessar_site_arquivei(context, url):
    login_page.acessar_site_arquivei(url)

@And ('insiro "{login}" e "{senha}" inexistentes')
def inserir_login_senha(context, login, senha):
    login_page.inserir_login(login)
    login_page.inserir_senha(senha)

@When ('clico para entrar no sistema')
def logar(context):
    login_page.logar()

@Then ('a mensagem de falha ao entrar deve ser exibida')
def verificar_mensagem_erro(context):
    login_page.verificar_mensagem_erro()