Feature: Importar XML de NF
    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario: Importar XML de NF com sucesso
        Given Given Estou na página inicial do sistema
        And acesso a página para importação de XML
        When clico para adicionar arquivos
        And seleciono o xml da NF desejada
        Then a NF selecionada é exibida na lista de importação
        When clico para visualizar a NF
        Then o resumo da NF é exibido

    Scenario: Importar XML inválido
        Given Given Estou na página inicial do sistema
        And acesso a página para importação de XML
        When clico para adicionar arquivos
        And seleciono um XML inválido
        Then a mensagem de falha é exibida
        When clico para remover a importação
        Then o arquivo importado deve ser removido da lista de importação