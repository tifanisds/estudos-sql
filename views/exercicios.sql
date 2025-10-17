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