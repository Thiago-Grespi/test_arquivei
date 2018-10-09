Feature: Realizar login

    Scenario Outline: Realizar login com sucesso
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |


    Scenario Outline: Tentar logar com usuário inexistente
        Given acesso o site da Arquivei pela <url>
        And insiro <login> e <senha> inexistentes
        When clico para entrar no sistema
        Then a mensagem de falha ao entrar deve ser exibida

        Examples:
        | url                                     | login                      | senha           |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | senhaincorreta  |

