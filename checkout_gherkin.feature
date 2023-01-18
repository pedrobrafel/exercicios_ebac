            #language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que eu esteja de checkout

            Cenário: Campos obrigatórios
            Quando eu não preencher o endereço
            E finalizar a compra
            Então deve exibir um alerta "Preencha os campos obrigatórios*"

            Esquema do Cenário: Prencher o cadastro e finalizar compra
            Quando eu preencher a identificação com <nome> <sobrenome>
            E o endereço <endereco>,<cidade>,<cep>
            E o telefone <telefone>
            E o email <email>
            E eu finalizar a compra
            Então deve exibir um alerta <mensagem>
            Exemplos:
            | nome   | sobrenome | endereco            | cidade      | cep         | telefone      | email              | mensagem                           |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "abcdef"    | "11999999999" | "meumail@mail.com" | "Digite um CEP válido"             |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | "11999999999" | "@mail.com"        | "Digite um E-mail válido"          |
            | ""     | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | "11999999999" | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | ""        | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | "11999999999" | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | ""                  | "São Paulo" | "01100-000" | "11999999999" | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | "Rua de ninguem, 0" | ""          | "01100-000" | "11999999999" | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | ""          | "11999999999" | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | ""            | "meumail@mail.com" | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | "11999999999" | ""                 | "Preencha os campos obrigatórios*" |
            | "João" | "Filho"   | "Rua de ninguem, 0" | "São Paulo" | "01100-000" | "11999999999" | "meumail@mail.com" | "Cadastro concluído!"              |
