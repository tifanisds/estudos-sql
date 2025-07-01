EXERCÍCIOS RESOLVIDOS - CONSULTAS SQL
=====================================

Este documento contém uma série de consultas SQL resolvidas, que cobrem os principais 
comandos utilizados para recuperar e filtrar informações de uma tabela relacional. 
Todos os exemplos são baseados na tabela fictícia "clientes".

--------------------------------------------------------------------------------
1. Liste o nome e a cidade de todos os clientes.
--------------------------------------------------------------------------------
SELECT nome, cidade FROM clientes;

--------------------------------------------------------------------------------
2. Mostre todos os dados dos clientes que moram em Salvador.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
WHERE cidade = 'Salvador';

--------------------------------------------------------------------------------
3. Mostre os clientes com idade maior que 30.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
WHERE idade > 30;

--------------------------------------------------------------------------------
4. Liste os clientes que são de Recife e têm mais de 25 anos.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
WHERE cidade = 'Recife' AND idade > 25;

--------------------------------------------------------------------------------
5. Mostre os clientes que não são do estado da Bahia (BA).
--------------------------------------------------------------------------------
SELECT * FROM clientes 
WHERE NOT cidade = 'Salvador';

--------------------------------------------------------------------------------
6. Liste todos os clientes ordenados por idade crescente.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
ORDER BY idade;

--------------------------------------------------------------------------------
7. Liste os nomes dos clientes em ordem alfabética decrescente.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
ORDER BY nome DESC;

--------------------------------------------------------------------------------
8. Mostre os 3 primeiros clientes cadastrados.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
LIMIT 3;

--------------------------------------------------------------------------------
9. Mostre 2 clientes a partir do terceiro.
--------------------------------------------------------------------------------
SELECT * FROM clientes 
LIMIT 2 OFFSET 3;

--------------------------------------------------------------------------------
10. Mostre quantos clientes existem em cada cidade.
--------------------------------------------------------------------------------
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY cidade;

--------------------------------------------------------------------------------
11. Mostre o total de clientes por estado.
--------------------------------------------------------------------------------
SELECT estado, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY estado;

--------------------------------------------------------------------------------
12. Liste as cidades que têm mais de 1 cliente.
--------------------------------------------------------------------------------
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY cidade
HAVING total_clientes > 1;

--------------------------------------------------------------------------------
13. Liste os clientes com idade entre 25 e 35 anos.
--------------------------------------------------------------------------------
SELECT nome, idade FROM clientes
WHERE idade >= 25 AND idade <= 35;

--------------------------------------------------------------------------------
14. Mostre os clientes cujo nome começa com a letra "B".
--------------------------------------------------------------------------------
SELECT nome FROM clientes
WHERE nome LIKE 'B%';

--------------------------------------------------------------------------------
15. Liste os clientes de Salvador ou Recife, com idade maior que 20.
--------------------------------------------------------------------------------
SELECT * FROM clientes
WHERE (cidade = 'Recife' OR cidade = 'Salvador') AND idade > 20;

--------------------------------------------------------------------------------
