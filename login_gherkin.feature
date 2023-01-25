            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu esteja na página de login da EBAC-SHOP

            Cenário: Login válido
            Quando eu digitar a credencial "pedro.felix@ebac.com.br" com a senha "pedro@123"
            Então deve redirecionar a tela para a página de checkout


            Esquema do Cenário: Usuário e/ou senha inválidos
            Quando eu digitar a credencial <usuario> com <senha>
            Então deve exibir um alerta <mensagem>

            Exemplos:
            | usuario                   | senha         | mensagem                     |
            | "pedro.felix@ebac.com.br" | "pedro@"      | "Usuário ou senha inválidos" |
            | "pedro@ebac.com.br"       | "pedro@123"   | "Usuário ou senha inválidos" |
  




