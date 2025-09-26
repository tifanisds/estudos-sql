EXPICAÇÕES SOBRE FUNÇÕES SQL FUNDAMENTAIS
==========================================

--------------------------------------------------------------------------------
O QUE É E COMO FUNCIONA
--------------------------------------------------------------------------------
As funções SQL são recursos prontos da linguagem SQL que permitem manipular dados diretamente dentro de uma consulta.
Elas servem para calcular, transformar, resumir ou formatar os dados sem que você precise programar isso fora do banco.

Em outras palavras:

- Você manda o SQL fazer algo sobre os dados.
- Ele processa dentro do banco.
- Você já recebe o resultado pronto.

--------------------------------------------------------------------------------
COUNT()
--------------------------------------------------------------------------------
- O que é: Função de agregação que conta o número de registros.
- Para que serve: Descobrir quantas linhas existem em uma tabela ou quantos registros atendem a um filtro.
- Como funciona: Percorre as linhas e retorna um número.

EXEMPLO:
SELECT COUNT(*) AS total_clientes
FROM clientes;
- Retorna o total de clientes cadastrados.

SELECT COUNT(*) AS pedidos_pagos
FROM pedidos
WHERE status = 'Pago';
- Retorna o total de pedidos pagos.

--------------------------------------------------------------------------------
SUM()
--------------------------------------------------------------------------------
- O que é: Soma os valores numéricos de uma coluna.
- Para que serve: Calcular faturamento, soma de quantidades etc.
- Como funciona: Pega todos os valores e soma.

EXEMPLO:
SELECT SUM(valor_total) AS faturamento
FROM pedidos;
- Retorna a soma da coluna "valor_total" da tabela pedidos

--------------------------------------------------------------------------------
AVG()
--------------------------------------------------------------------------------
- O que é: Calcula a média de valores numéricos.
- Para que serve: Descobrir média de salários, notas, preços etc.
- Como funciona: Soma os valores e divide pelo total.

EXEMPLO:
SELECT AVG(salario) AS media_salarial
FROM funcionarios;
- Soma todos os salarioa da tabela funcionarios e divide pela quantidade de registros e retorna a média

--------------------------------------------------------------------------------
MIN()
--------------------------------------------------------------------------------
- O que é: Retorna o menor valor de um conjunto.
- Para que serve: Descobrir o preço mais barato, o menor salário etc.
- Como funciona: Varre todos os valores e pega o menor.

EXEMPLO:
SELECT MIN(preco) AS menor_preco
FROM produtos;
- Verifica todos o preços de produtos e retorna o menor

--------------------------------------------------------------------------------
MAX()
--------------------------------------------------------------------------------
- O que é: Retorna o maior valor de um conjunto.
- Para que serve: Descobrir o preço mais caro, a maior nota etc.
- Como funciona: Varre todos os valores e pega o maior.

EXEMPLO:
SELECT MAX(preco) AS maior_preco
FROM produtos;
- Verifica todos os preços de produtos e retorna o maio

--------------------------------------------------------------------------------
CONCAT()
--------------------------------------------------------------------------------
- O que é: Junta textos em uma única string.
- Para que serve: Formatar dados, criar exibições personalizadas.
- Como funciona: Coloca lado a lado os textos recebidos.

EXEMPLO:
SELECT CONCAT(nome, ' - ', email) AS contato
FROM clientes;
- Retorna algo como: Tífani - tifani@email.com

--------------------------------------------------------------------------------
UPPER()
--------------------------------------------------------------------------------
O que é: Converte texto para MAIÚSCULO.

EXEMPLO:
SELECT UPPER(nome)
FROM clientes;
- Retorna: TIFANI

--------------------------------------------------------------------------------
LOWER()
--------------------------------------------------------------------------------
O que é: Converte texto para minúsculo.

EXEMPLO:
SELECT LOWER(email)
FROM clientes;
- Retorna: tifani@email.com
