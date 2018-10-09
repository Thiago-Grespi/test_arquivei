Feature: Filtrar empresa na lista

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario Outline: Buscar empresa com sucesso
        Given estou na página inicial do sistema
        And acesso o menu Minhas Empresas
        And clico em Filtrar Empresas
        When inserir o <cnpj>
        And clicar em buscar
        Then a empresa com o <cnpj> deve ser exibida na lista

        Examples:
        | cnpj               |
        | 00.632.151/0001-62 |	


    Scenario Outline: Buscar empresa inexistente
        Given Given Estou na página inicial do sistema
        And acesso o menu Minhas Empresas
        And clico em Filtrar Empresas
        When inserir o <cnpj>
        And clicar em buscar
        Then a <mensagem_falha> deve ser exibida

        Examples:
        | mensagem_falha                             |
        | Você ainda não possui empresas cadastradas |