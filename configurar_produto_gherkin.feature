            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página do produto

            Cenário: Limpar configuração
            Quando eu selecionar um tamanho
            E selecionar uma cor
            E clicar em "Limpar"
            Então deve desmarcar as opções

            Esquema do Cenário: Campos obrigatórios
            Quando eu definir o <tamanho>
            E a <cor>
            E a <quantidade>
            Então deve exibir a <mensagem>

            Exemplos:
            | tamanho | cor    | quantidade | mensagem                                 |
            | "S"     | "Blue" | 1          | "Adicionado ao carrinho"                 |
            | ""      | "Blue" | 1          | "Escolha um tamanho"                     |
            | "S"     | ""     | 1          | "Escolha uma cor"                        |
            | "S"     | "Blue" | 11         | "Quantidade máxima de produtos excedida" |
            | "S"     | ""     | 1          | "Escolha um tamanho e uma cor"           |

