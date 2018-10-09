Feature: Iniciar testes de aplicativo Email Automático - NFe Emitida

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario Outline: Iniciar testes de aplicativo com sucesso
        Given estou na página inicial do sistema
        Then acesso a loja de aplicativos
        And clico no botão de Mais informações do aplicativo Email Automático - NFe Emitida
        When Abro o popup de escolher a empresa
        And seleciono p <cnpj> da empresa na qual quero contratar o serviço
        And clico em iniciar o teste
        Then a <mensagem_sucesso> é exibida

        Examples:
        | cnpj           | mensagem_sucesso                |
        | 00632151000162 | Aplicativo em período de testes.|


    Scenario Outline: Tentar iniciar teste de aplicativo sem selecionar empresa
        Given estou na página inicial do sistema
        Then acesso a loja de aplicativos
        And clico no botão de Mais informações do aplicativo Email Automático - NFe Emitida
        When Abro o popup de escolher a empresa
        And clico em iniciar o teste sem selecionar uma empresa
        Then a <mensagem_falha> de falha é exibida

        Examples:
        | mensagem_falha                                                                                                         |
        | A assinatura deste aplicativo é habilitada por empresa. Por favor, escolha as empresas para as quais deseja assiná-lo. |

