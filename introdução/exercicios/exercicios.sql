-- Liste o nome e a cidade de todos os clientes.
SELECT nome, cidade FROM clientes


-- Mostre todos os dados dos clientes que moram em Salvador.
SELECT * FROM clientes 
WHERE cidade = 'Salvador'


-- Mostre os clientes com idade maior que 30.
SELECT * FROM clientes 
WHERE idade > 30


-- Liste os clientes que são de Recife e têm mais de 25 anos.
SELECT * FROM clientes 
WHERE cidade = 'Recife' AND idade > 25


-- Mostre os clientes que não são do estado da Bahia (BA).
SELECT * FROM clientes 
WHERE NOT cidade = 'Salvador'

 
-- Liste todos os clientes ordenados por idade crescente.
SELECT * FROM clientes 
ORDER BY idade 


-- Liste os nomes dos clientes em ordem alfabética decrescente.
SELECT * FROM clientes 
ORDER BY nome DESC 


-- Mostre os 3 primeiros clientes cadastrados.
SELECT * FROM clientes 
LIMIT 3

-- Mostre 2 clientes a partir do terceiro.
SELECT * FROM clientes 
LIMIT 2 OFFSET 3 


-- Mostre quantos clientes existem em cada cidade.
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY cidade


-- Mostre o total de clientes por estado.
SELECT estado, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY estado


-- Liste as cidades que têm mais de 1 cliente.
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes 
GROUP BY cidade
HAVING total_clientes > 1


--Liste os clientes com idade entre 25 e 35 anos.
SELECT nome, idade FROM clientes
WHERE idade >= 25 AND idade <=35


-- Mostre os clientes cujo nome começa com a letra "B".
SELECT nome FROM clientes
WHERE nome LIKE 'B%'


-- Liste os clientes de Salvador ou Recife, com idade maior que 20.
SELECT * FROM clientes
WHERE (cidade = 'Recife' OR cidade = 'Salvador') AND idade > 20

