            #language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra
            

            Cenário: Campos obrigatórios

            Dado que eu esteja na tela de cadastro
            Quando eu não preencher algum campo obrigatório
            Então deve exibir um alerta "Preencha o(s) campo(s) obrigatório(s)"


            Cenário: Prencher o cadastro e finalizar compra
            
            Dado que eu esteja na tela de cadastro com os seguinte dados:
            | nome   | sobrenome | endereco            | cidade             | cep         | telefone      | email               |
            | "João" | "Filho"   | "Rua de ninguem, 1" | "São Paulo"        | "01100-001" | "11999999991" | "meumail1@mail.com" |
            | "Joao" | "Neto"    | "Rua de ninguem, 2" | "Belo Horizonte"   | "30100-002" | "31999999992" | "meumail2@mail.com" |
            | "João" | "Segundo" | "Rua de ninguem, 3" | "Manaus"           | "27949-003" | "92999999993" | "meumail3@mail.com" |
            | "João" | "Terceiro"| "Rua de ninguem, 4" | "Porto Alegre"     | "91910-004" | "51999999994" | "meumail4@mail.com" |
            Quando eu preencher os campos obrigatórios
            Então deve exibir um alerta "Cadastro concluído"
