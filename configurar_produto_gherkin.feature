            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja na página do produto
 
            Cenário: Campos obrigatórios
            Quando eu não preencher algum campo obrigatório
            Então deve exibir um alerta "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."
  
            Esquema do Cenário: Limpar configuração
            Quando eu selecionar <tamanho>, <cor> 
            E eu clicar em "Limpar"
            Então deve desmarcar as opções

            Exemplos:
            | tamanho | cor    |
            | "S"     | "Blue" | 
            | "XS"    | "Red"  | 
           
