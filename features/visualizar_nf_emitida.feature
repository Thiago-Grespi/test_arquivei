Feature: Visualizar nota emitida

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario Outline: Visualizar NF existente
        Given estou na página inicial do sistema
        And acesso a página de NFe pelo menu lateral
        And acesso a guia de NF emitidas
        When busco pelo número de uma <nf> específica
        And posiciono o mouse sobre a NF desejada
        And clico para visualizar a NF 
        Then a NF é exibida

        Examples:
        | nf   |
        | 3038 |


    Scenario Outline: Tentar visualizar NF inexistente
        Given estou na página inicial do sistema
        And acesso a página de NFe pelo menu lateral
        And acesso a guia de NF emitidas
        When busco pelo número de uma <nf> que não existe
        Then nenhuma NF deve ser exibida na lista de NFs

        Examples:
        | nf   |
        | 1234 |