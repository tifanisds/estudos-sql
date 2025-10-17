/*EXEMPLO DE SALA DE AULA*/
CREATE VIEW Vw_FaturamentoPorCliente AS 
SELECT 
	c.nome AS nome_cliente,
	SUM(PI.quantidade * p.preco) AS faturamento_total
FROM 
	clientes AS c
JOIN pedidos AS ped ON c.cliente_id = ped.cliente_id
JOIN pedido_itens AS pi ON ped.pedido_id = pi.pedido_id
JOIN produtos AS p ON pi.produto_id = p.produto_id
GROUP BY 
c.nome;

/*Como consultar:*/
SELECT * FROM Vw_FaturamentoPorCliente
WHERE faturamento_total > 1000

----------------------------------------------------------------------------------------------------

Desafio 1:
● Crie uma View chamada Vw_RelatorioDeVendas que junte todas as
tabelas e mostre as seguintes colunas: data_pedido, nome_cliente,
nome_produto, quantidade, preco e o subtotal (quantidade * preco).

CREATE VIEW Vw_RelatorioDeVendas AS 
SELECT ped.data_pedido, c.nome, p.nome_produto, pi.quantidade, p.preco, pi.quantidade * p.preco
FROM clientes AS c
JOIN pedidos AS ped ON c.cliente_id = ped.cliente_id
JOIN pedido_itens AS pi ON ped.pedido_id = pi.pedido_id
JOIN produtos AS p ON pi.produto_id = p.produto_id
GROUP BY
c.nome

SELECT * FROM Vw_RelatorioDeVendas

----------------------------------------------------------------------------------------------------

Desafio 2:
● Após criar a View, escreva uma consulta simples nela para mostrar todos os
itens vendidos para a cliente 'Maria Santos'.
 
SELECT * FROM Vw_RelatorioDeVendas
WHERE nome = "Maria"

----------------------------------------------------------------------------------------------------

Desafio 3:
● O departamento de logística precisa frequentemente consultar todos os
pedidos feitos em uma data específica para planejar as entregas. Crie um
índice na tabela Pedidos para acelerar a busca pela coluna data_pedido.

CREATE INDEX idx_data_pedido ON pedidos(data_pedido)
SELECT data_pedido FROM pedidos

----------------------------------------------------------------------------------------------------

Desafio 4:
● A coluna nome_produto da tabela Produtos é frequentemente usada em
cláusulas WHERE para buscar produtos. Seria uma boa ideia criar um índice
nessa coluna? Por quê?

Sim, pois dessa forma evitamos consultas pesadas o principal causador de problemas no hardware e lentidão de consultas.
Como fazer o index:
CREATE INDEX idx_nome_produto ON produtos(nome_produto)
SELECT nome_produto FROM produtos