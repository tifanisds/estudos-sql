EXERCÍCIOS SQL SOBRE FUNÇÕES AGREGADAS PASSADOS EM SALA DE AULA 

==============================================================

DESAFIO 1 (COUNT) - Quantos clientes moram na cidade de São Paulo?  
SELECT cidade, count(*) FROM clientes
GROUP BY cidade
HAVING cidade = 'São Paulo'

DESAFIO 2 (SUM e GROUP BY) - Qual a quantidade total de itens vendidos em cada pedido?
(A resposta deve mostrar o id do pedido e a soma das quantidades) 
SELECT pedido_id, SUM(produto_id) 
FROM pedido_itens
GROUP BY pedido_id 

DESAFIO 3 (AVG) - Qual o preço médio dos produtos?
SELECT AVG(preco) FROM produtos 

DESAFIO 4 (MIN/MAX) - Qual a data do pedido mais antigo e o mais recente?
SELECT 
	MIN(data_pedido) AS mais_antigo, 
	MAX(data_pedido) AS mais_recente
FROM pedidos

---------------------------------------------------------------
SEGUNDO QUESTIONÁRIO
---------------------------------------------------------------

1 - Qual o faturamento total por cliente, ordenado do maior para o menor?
SELECT c.nome, SUM(preco * quantidade) AS faturamento_total
FROM pedido_itens pi
INNER JOIN pedidos p
ON p.pedido_id = pi.pedido_id
INNER JOIN produtos pro
ON pro.produto_id = pi.produto_id
INNER JOIN clientes c
ON c.cliente_id = p.cliente_id
GROUP BY c.nome
ORDER BY faturamento_total DESC

2 - Qual foi o número de pedidos e a quantidade total de itens vendidos em cada cidade Mês a Mês?
SELECT 
	COUNT(DISTINCT p.pedido_id) AS quantidade_pedidos,
	SUM(pit.quantidade) AS quantidade_total,
	c.cidade,
	EXTRACT(MONTH FROM p.data_pedido) AS mes
FROM pedido_itens pit
INNER JOIN pedidos p
ON p.pedido_id = pit.pedido_id
INNER JOIN produtos pro
ON pro.produto_id = pit.produto_id
INNER JOIN clientes c
ON c.cliente_id = p.cliente_id
GROUP BY cidade

3 - Quais clientes gastaram mais de R$ 1000,00 no total e cujo valor médio por pedido é superior à média de valor de todos os pedidos da loja?
SELECT 
	c.nome AS cliente,
	SUM(pit.quantidade * pro.preco) AS valor_total
FROM pedido_itens pit
INNER JOIN pedidos p
ON p.pedido_id = pit.pedido_id
INNER JOIN produtos pro
ON pro.produto_id = pit.produto_id
INNER JOIN clientes c
ON c.cliente_id = p.cliente_id
GROUP BY c.nome
HAVING (valor_total > 1000)