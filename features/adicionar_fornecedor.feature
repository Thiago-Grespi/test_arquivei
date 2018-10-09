Feature: Adicionar fornecedor

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    
    Scenario Outline: Adicionar fornecedor com sucesso
        Given estou na página inicial do sistema
        And acesso a lista de fornecedores
        When clico para adicionar um novo fornecedor
        And insiro o <nome>
        And insiro o <cnpj>
        And clico em Salvar
        Then a mensagem de sucesso deve ser exibida

        Examples:
        |nome            | cnpj               |
        | Zap Construtora| 07.318.437/0001-17 |

    Scenario Outline: Adicionar fornecedor sem CNPJ
        Given estou na página inicial do sistema
        And acesso a lista de fornecedores
        When clico para adicionar um novo fornecedor
        And insiro o <nome>
        And clico em Salvar
        Then a mensagem de erro deve ser exibida

        Examples:
        | nome      |
        | Tech Road |