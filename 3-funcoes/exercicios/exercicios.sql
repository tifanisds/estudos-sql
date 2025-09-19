EXERCÍCIOS SQL – FUNÇÕES DE AGREGAÇÃO E MANIPULAÇÃO DE TEXTO

==============================================================

Os exercícios a seguir têm como objetivo praticar os comandos SQL relacionados ao uso de funções para agregação de dados e manipulação de 
strings em um banco de dados relacional.

Assuntos cobrados:
- Funções de agregação: COUNT, SUM, AVG, MIN, MAX
- Funções de texto: CONCAT, UPPER, LOWER

COUNT
--------------------------------------------------------------------------------
1. Conte quantos clientes existem na tabela clientes.
SELECT COUNT(*) AS total_clientes
FROM clientes

2. Descubra quantos pedidos foram pagos.
SELECT COUNT(*) AS pedidos_pagos 
FROM pedidos
WHERE STATUS = 'Pago'

3. Descubra quantos clientes diferentes já fizeram pedidos (COUNT(DISTINCT ...)).
SELECT COUNT(DISTINCT(cliente_id)) AS clientes 
FROM pedidos
--------------------------------------------------------------------------------

SUM
--------------------------------------------------------------------------------
1. Calcule o valor total de todos os pedidos.
SELECT SUM(valor_total) AS valor_total
FROM pedidos

2. Descubra o valor total apenas dos pedidos Pagos.
SELECT SUM(valor_total) AS valor_total
FROM pedidos
WHERE STATUS = 'pago'

3. Descubra o total de compras por cliente (usando GROUP BY).
SELECT cliente_id, SUM(valor_total) AS valor_total
FROM pedidos
GROUP BY cliente_id
--------------------------------------------------------------------------------

AVG
--------------------------------------------------------------------------------
1. Calcule a média de idade dos clientes.
SELECT AVG(idade) AS idade_media
FROM clientes

2. Calcule o valor médio dos pedidos.
SELECT AVG(valor_total) AS valor_medio
FROM pedidos

3. Descubra a média de valor gasto por cliente.
SELECT cliente_id, AVG(valor_total) AS valor_medio
FROM pedidos
GROUP BY cliente_id
--------------------------------------------------------------------------------

MIN
--------------------------------------------------------------------------------
1. Descubra o cliente mais jovem da tabela.
SELECT MIN(idade) as mais_novo
FROM clientes

2. Descubra o menor valor de pedido já realizado.
SELECT MIN(valor_total) menor_valor
FROM pedidos

3. Descubra a menor idade dos clientes de Salvador.
SELECT MIN(idade)
FROM clientes
WHERE cidade = 'Salvador'
--------------------------------------------------------------------------------

MAX
--------------------------------------------------------------------------------
1. Descubra a maior idade dos clientes.
SELECT MAX(idade) as mais_velho
FROM clientes

2. Descubra o pedido de maior valor.
SELECT MAX(valor_total) as mais_caro
FROM pedidos
--------------------------------------------------------------------------------

CONCAT
--------------------------------------------------------------------------------
1. Crie uma coluna chamada contato no SELECT, que mostre: "Nome - Email".
SELECT CONCAT(nome, ' - ' , email) AS Contato
FROM clientes

2. Crie uma coluna que mostre: "Nome (Cidade)".
SELECT CONCAT(nome, ' (', cidade, ')') AS cliente
FROM clientes

3. Monte uma frase personalizada: "O cliente Nome tem Idade anos e mora em Cidade".
SELECT CONCAT('O cliente ', nome, ' tem ', idade, ' anos e mora em ', cidade) AS frase
FROM clientes
--------------------------------------------------------------------------------

UPPER
--------------------------------------------------------------------------------
1. Liste todos os nomes em letras maiúsculas.
SELECT UPPER(nome) 
FROM clientes

2. Liste todos os e-mails em maiúsculo.
SELECT UPPER(email) 
FROM clientes

3. Mostre o nome e a cidade juntos, mas em maiúsculo.
SELECT UPPER(CONCAT(nome, " - ", cidade)) 
FROM clientes
--------------------------------------------------------------------------------

LOWER
--------------------------------------------------------------------------------
1. Liste todos os nomes em minúsculo.
SELECT LOWER(nome) 
FROM clientes

2. Mostre apenas os e-mails em minúsculo.
SELECT LOWER(email) 
FROM clientes

3. Mostre a frase "cliente: nome - cidade" toda em letras minúsculas.
SELECT LOWER(CONCAT('cliente: ', nome, ' - ', cidade))
FROM clientes
--------------------------------------------------------------------------------