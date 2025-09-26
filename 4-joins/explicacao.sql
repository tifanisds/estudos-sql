EXPLICAÇÕES SOBRE JOINS SQL
==========================================

O QUE É E COMO FUNCIONA

Joins são recursos da linguagem SQL que permitem combinar dados de duas ou mais tabelas em uma única consulta. Eles funcionam 
com base em colunas relacionadas (normalmente chaves primárias e estrangeiras).

Em outras palavras:

Você tem informações divididas em tabelas diferentes.

O JOIN junta essas informações usando uma condição de relacionamento (ON).

O resultado é uma tabela única, combinando os dados relacionados.

-----------------------------------------
INNER JOIN

- O que é: Retorna apenas os registros que têm correspondência nas duas tabelas.
- Para que serve: Buscar dados que estão relacionados em ambas as tabelas.
- Como funciona: Compara as colunas especificadas no ON e retorna apenas os pares que casam.
EXEMPLO:

SELECT Pedidos.id, Clientes.nome
FROM Pedidos
INNER JOIN Clientes ON Pedidos.cliente_id = Clientes.id;
- Retorna apenas os pedidos que estão ligados a um cliente existente.

-----------------------------------------
LEFT JOIN (ou LEFT OUTER JOIN)

- O que é: Retorna todos os registros da tabela da esquerda, mesmo que não haja correspondência na tabela da direita.
- Para que serve: Encontrar registros que têm ou não correspondência, preservando todos da tabela principal.
- Como funciona: Primeiro pega todos os dados da tabela da esquerda, depois tenta casar com os da direita. Se não achar, preenche com NULL.
EXEMPLO:

SELECT Clientes.nome, Pedidos.id
FROM Clientes
LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;
- Retorna todos os clientes, inclusive os que nunca fizeram pedido (nesses casos o id do pedido fica NULL).

-----------------------------------------
RIGHT JOIN (ou RIGHT OUTER JOIN)

- O que é: Retorna todos os registros da tabela da direita, mesmo que não haja correspondência na da esquerda.
- Para que serve: Similar ao LEFT JOIN, mas preserva os dados da tabela da direita.
- Como funciona: Primeiro pega todos os dados da tabela da direita, depois tenta casar com os da esquerda. Se não achar, preenche com NULL.
EXEMPLO:

SELECT Pedidos.id, Clientes.nome
FROM Pedidos
RIGHT JOIN Clientes ON Pedidos.cliente_id = Clientes.id;
- Retorna todos os pedidos, inclusive se algum cliente foi excluído ou não existe na tabela de Clientes (o nome pode aparecer NULL).
