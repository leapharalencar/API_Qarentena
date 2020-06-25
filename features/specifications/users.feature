#language: pt

@users
Funcionalidade: Users
    validar operações da API Users

    @get_users
    Cenário: Validar GET API Users
        Quando faço uma requisição GET para o serviço Users
        Então o serviço Users deve responder com 200
        E retorna a lista de usuários

    @get_user
    Cenário: Validar GET API Users com id
        Quando faço uma requisição GET para o serviço Users passando id
        Então o serviço Users deve responder com 200
        E retorna o usuário

    @post_users
    Cenário: Validar POST API Users
        Quando faço uma requisição POST para o serviço Users
        Então o serviço Users deve responder com 200
        E retorna o usuário criado
