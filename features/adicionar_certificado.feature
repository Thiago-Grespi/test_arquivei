Feature: Adicionar certificado

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario: Adicionar certificado válido
        Given Estou na página inicial do sistema
        And acesso a área de certificados no menu lateral
        When escolho o arquivo do certificado
        And insiro a senha do certificado
        And clico em Enviar Certificado com Segurança
        Then a mensagem de sucesso deve ser exibida

    Scenario: Adicionar certificado sem selecionar arquivo
        Given Estou na página inicial do sistema
        And acesso a área de certificados no menu lateral
        And clico em Enviar Certificado com Segurança sem ter selecionado um arquivo
        Then a mensagem de erro é exibida