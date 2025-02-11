# Racha Cuca - Barraca de Pastel

## Descrição

Este é um projeto em Prolog que resolve o problema "Barraca de Pastel" do site **Racha Cuca**. O desafio consiste em determinar a disposição dos clientes na mesa de uma barraca de pastel, considerando diversas pistas sobre as preferências de alimentos, bebidas, profissões e cores de camisetas. O código em Prolog usa essas pistas para gerar a solução, mostrando em qual posição cada cliente se encontra na mesa.

## Regras do Problema

1. Júlio está exatamente à direita do Bancário.
2. Quem gosta de Maionese está entre quem gosta de Pimenta e quem gosta de Mostarda.
3. Fabiano vai comer um pastel de Frango.
4. O cliente de Vermelho está ao lado de quem vai beber um suco de Maracujá.
5. Fabiano está entre quem gosta de Vinagrete e o Carlos, nessa ordem.
6. O Entregador pediu um pastel de Carne.
7. O Relojoeiro está exatamente à esquerda de quem beberá um suco de Maçã.
8. O rapaz de Vermelho está à esquerda de quem gosta de Ketchup.
9. Na quarta posição está o cliente que gosta de Mostarda.
10. O Feirante está ao lado de quem gosta de Pimenta.
11. Quem vai comer um pastel de Carne está entre quem vai comer um pastel de Frango e quem vai comer um pastel de Calabresa, nessa ordem.
12. O cliente de Azul gosta de Maionese.
13. Rubens está à direita de quem pediu um pastel de Queijo.
14. O Feirante vai beber um suco de Maracujá.
15. O rapaz de Amarelo está à esquerda do rapaz de Branco.
16. Quem pediu um suco de Laranja está entre Júlio e quem pediu suco de Limão, nessa ordem.
17. Na primeira posição está quem vai comer um pastel de Pizza.
18. O Bancário está usando uma camiseta Verde.
19. Quem gosta de Pimenta está entre o Relojoeiro e o cliente de Azul, nessa ordem.

## Estrutura do Código

O código Prolog contém diversos predicados e regras que representam a relação de posições entre os clientes na mesa e suas preferências. As principais partes do código são:

### Predicados

- **resolve/1**: Encontra a solução e define a disposição dos clientes na mesa.
- **membro/2**: Verifica se um cliente é um membro da mesa.
- **camiseta/2**: Determina a cor da camiseta de um cliente.
- **nome/2**: Determina o nome de um cliente.
- **pastel/2**: Determina qual tipo de pastel um cliente vai comer.
- **condimento/2**: Determina o condimento preferido de um cliente.
- **suco/2**: Determina o suco que um cliente vai beber.
- **profissao/2**: Determina a profissão de um cliente.

### Regras de Posição

- **aolado/2**: Verifica se dois clientes estão ao lado um do outro.
- **algum_lugar_entre/4**: Verifica se um cliente está entre dois outros na mesa.
- **algum_lugar_a_esquerda/3**: Verifica se um cliente está à esquerda de outro.
- **exatamente_a_esquerda/2**: Verifica se um cliente está exatamente à esquerda de outro.
- **exatamente_a_direita/2**: Verifica se um cliente está exatamente à direita de outro.

## Como Rodar o Projeto

1. Instale o ambiente de Prolog (recomenda-se o **SWI-Prolog**).
2. Crie um arquivo `.pl` e cole o código fornecido nele.
3. No terminal, execute o SWI-Prolog e carregue o arquivo com o comando:
   ```
   [main.pl].
   ```
4. Para resolver o problema e encontrar a disposição da mesa, execute a consulta:
   ```
   resolve(Sol).
   ```

## Exemplo de Saída

A saída será a solução do problema, representando a disposição dos clientes na mesa. Exemplo:

```
mesa(cliente(julio, _, _, _, _), 
     cliente(bancario, _, _, _, _),
     cliente(fabiano, _, _, _, _),
     cliente(carlos, _, _, _, _),
     cliente(marcelo, _, _, _, _)).
```

## Autor

**Gabriel Azevedo**  
Email: g.azevedo0121@gmail.com

