Feature: Editar perfil

    Background: Logar no sistema
        Given acesso o site da Arquivei pela <url>
        And insiro meu <login> e <senha>
        When clico para entrar no sistema
        Then a página principal deve ser exibida

        Examples:
        | url                                     | login                      | senha     |
        | https://psel-app.arquivei.com.br/login  | thiago.grespi90@gmail.com  | mudar123  |

    Scenario Outline: Editar telefone do perfil com sucesso
        Given Given Estou na página inicial do sistema
        And acesso o item editar perfil
        When removo o meu telefone atual
        And coloco meu <novo_telefone>
        And clico em Salvar
        Then a <mensagem_sucesso> deve ser exibida
        When entro novamente no meu perfil
        Then o <novo_telefone> deve estar presente no campo de telefone

        Examples:
        | novo_telefone | mensagem_sucesso  |
        | 16994455667   | Perfil atualizado |

    Scenario Outline: Editar telefone do perfil e não salvar
        Given Given Estou na página inicial do sistema
        And acesso o item editar perfil
        When removo o meu telefone atual
        And coloco meu <novo_telefone>
        And clico para ir para a página inicial
        When ao acessar novamente meu perfil
        Then o telefone deve ser o telefone antigo

        Examples:
        | novo_telefone |
        | 16998745632   |


    Scenario Outline: Editar telefone e colocar letras
        Given Given Estou na página inicial do sistema
        And acesso o item editar perfil
        When removo o meu telefone atual
        And coloco meu <novo_telefone>
        And clico para salvar
        Then uma mensagem de erro deve ser exibida

        Examples:
        | novo_telefone |
        | abcdefg       |

    Scenario Outline: Colocar senhas divergentes nos campos de Senha e Confirmar senha
        Given Given Estou na página inicial do sistema
        And acesso o item editar perfil
        When coloco a <senha_1> no campo de Senha
        And coloco a <senha_2> no campo de Confirme sua senha
        And clico para salvar
        Then a mensagem de falha deve ser exibida

        Examples:
        | senha_1 | senha_2 |
        | 123     | 456     |

    Scenario: Salvar com todos os campos em branco
        Given Given Estou na página inicial do sistema
        And acesso o item editar perfil
        When removo todo o conteúdo de todos os campos
        And clico para salvar
        Then a mensagem de erro deve ser exibida
