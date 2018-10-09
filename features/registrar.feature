Feature: Registrar-se no sistema

    Scenario Outline: Registrar com sucesso no sistema
        Given acesso o site da Arquivei pela <url>
        And clico para me registrar
        Then Insiro meu <email> corporativo
        And seleciono meu local de trabalho
        And seleciono o departamento ao qual pertenço
        And insiro meu <nome> e <telefone>
        And clico para continuar
        And insiro o <cnpj> da minha empresa
        And seleciono o estado
        And clico para continuar
        And insiro minha <senha>
        When clico para continuar
        Then a mensagem de boas vindas é exibida
        When navego para a <url_principal>
        Then devo estar devidamente logado no sistema
        And a tela inicial do sistema deve estar sendo exibida



    Scenario Outline: Tentar registrar com um CNPJ inválido
        Given acesso o site da Arquivei pela <url>
        And clico para me registrar
        Then Insiro meu <email> corporativo
        And seleciono meu local de trabalho
        And seleciono o departamento ao qual pertenço
        And insiro meu <nome> e <telefone>
        And clico para continuar
        When insiro um <cnpj> inválido
        Then a mensagem de <cnpj> inválido é exibida