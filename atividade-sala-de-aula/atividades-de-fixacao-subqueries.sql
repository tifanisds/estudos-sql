1 - Liste todos os pedidos que foram feitos na data do pedido mais recente registrado no
sistema. (Dica: A subquery deve encontrar o MAX(data_pedido))

SELECT * FROM pedidos
WHERE data_pedido = (SELECT MAX(data_pedido) FROM pedidos)

2 - Mostre o nome e o preço de todos os produtos que nunca foram vendidos. (Dica:
Use NOT IN e uma subquery que retorna a lista de todos os produto_id da tabela
Pedido_Itens)

SELECT nome_produto, preco
FROM produtos 
WHERE produto_id NOT IN (SELECT produto_id FROM pedido_itens)

3 - Liste todos os produtos que são mais caros que o preço médio de todos os
produtos cadastrados

SELECT nome_produto                            
FROM produtos                                  
WHERE preco > (SELECT AVG(preco) FROM produtos)