#language: pt
@smoke
Funcionalidade: Usuarios
  validar comportamento da API Usuarios

  Swagger: https://github.com/ServeRest/ServeRest

  @#roberto_filho
  @usuarios.post
  Esquema do Cenário: [CONTRACT] - Validar o endpoint Usuarios.post
    Enviar uma requisição para o endpoint Usuarios.post
    Validar o retorno do usuário cadastrado
    Validar o tipo de cada campo do response

    Dado que tenho uma massa configurada para o endpoint Usuarios.post para o cenário "<tipo>"
    Quando enviar uma requisição para o endpoint Usuarios.post
    Entao Validar o retorno do endpoint Usuarios.post para o cenário "<tipo>"

    Exemplos:
      |   tipo   |
      | positivo |
      | negativo |
      