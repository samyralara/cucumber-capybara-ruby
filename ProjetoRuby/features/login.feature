#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify


    Cenario: Login do Usuario
        Dado que acesso a pagina login
        Quando submeto minhas credenciais com: "samys@bol.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    @teste
    Esquema do Cenário: Tentativa de login
        Dado que acesso a pagina login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Entao devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                      | senha |
            | fernandoteste333@gmailcom  | abc   |
            |                            |       |
            | fernandoteste333@gmail.com |       |
            |                            | abc   |
