Feature: Adicionar empresa

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario Outline: Adicionar empresa com sucesso
        Given Estou na página inicial do sistema
        And acesso o menu Minhas Empresas
        Then clico para adicionar uma empresa
        When insiro o <cnpj> e seleciono o estado
        And clico em Salvar novas Empresas
        Then a empresa recém criada é exibida na lista junto com seu <cnpj>

        Examples:
        | cnpj           |
        | 57148677000199 |


    Scenario Outline: Adicionar empresa com CNPJ inválido
        Given Estou na página inicial do sistema
        And acesso o menu Minhas Empresas
        Then clico para adicionar uma empresa
        When insiro um <cnpj> inválido
        Then a mensagem de erro deve ser exibida

        Examples:
        | cnpj           |
        | 57148677000199 |