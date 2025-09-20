EXERCÍCIOS SQL PASSADOS EM SALA DE AULA

==============================================================

3.1 - Recuperando Dados com SELECT e WHERE

---------------------------------------------------------------
Escreva uma consulta que retorne o nome e o e-mail de todos os clientes da cidade de São Paulo.

select nome, email 
from clientes
where cidade = 'São Paulo'

---------------------------------------------------------------
Elabore uma consulta que liste o nome_produto e o preco de todos os produtos com valor superior a 500.00.

select nome_produto, preco
from produtos
where preco > 500.00

---------------------------------------------------------------
Crie uma consulta para mostrar o pedido_id e o cliente_id de todos os pedidos feitos no dia 10-09-2024

select pedido_id, cliente_id
from pedidos
where data_pedido = '2025-09-10'

---------------------------------------------------------------
Escreva uma consulta que retorne apenas o email do cliente cujo nome é 'Pedro Almeida'.

select email from clientes
where nome = 'Pedro Almeida'

---------------------------------------------------------------
Liste o nome_produto e o preço dos produtos que se encaixam na faixa de preço entre R$ 100,00 e R$ 400,00.

select nome_produto, preco
from produtos 
where preco > 100.00 and preco < 400.00

---------------------------------------------------------------
3.2 - Combinando Tabelas com JOIN
---------------------------------------------------------------
Escreva uma consulta que mostre o nome do cliente (da tabela Clientes) e o pedido_id e a data_pedido (da tabela Pedidos) para cada pedido realizado.
SELECT c.nome, p.pedido_id, p.data_pedido
FROM clientes c
INNER JOIN pedidos p
ON c.cliente_id = p.cliente_id;

---------------------------------------------------------------
Crie uma consulta que junte as tabelas Pedidos, Pedido_Itens e Produtos. O resultado deve exibir o pedido_id, o nome_produto, a quantidade de itens comprados e o preco unitário do produto.

select pe.pedido_id, pr.nome_produto, pi.quantidade, pr.preco
from produtos pr
inner join pedido_itens pi
on pi.produto_id = pr.produto_id
inner join pedidos pe
on pe.pedido_id = pi.pedido_id
order by pe.pedido_id

---------------------------------------------------------------
Elabore uma consulta que liste o nome_produto de todos os produtos que 'João Silva' já comprou, incluindo as compras de diferentes datas.


select pr.nome_produto
from produtos pr
inner join pedido_itens pi 
on pi.produto_id = pr.produto_id 
inner join pedidos pe
on pe.pedido_id = pi.pedido_id
inner join clientes c
on pe.cliente_id = c.cliente_id
where c.cliente_id = 1

---------------------------------------------------------------
3.3 - Modificando a Estrutura da Tabela com ALTER TABLE
---------------------------------------------------------------
Use o comando ALTER TABLE para adicionar uma nova coluna chamada telefone na tabela Clientes. A coluna deve ser do tipo VARCHAR(20).

alter table clientes
add telefone varchar(20)

---------------------------------------------------------------
Utilize o comando UPDATE para adicionar um número de telefone para o cliente 'João Silva'. Por exemplo: (11) 98765-4321.

update clientes
set telefone = '(11) 98765-4321'
where cliente_id = 1

---------------------------------------------------------------
Altere a coluna nome_produto na tabela Produtos para que ela aceite até 150 caracteres (VARCHAR(150)).

alter table produtos
modify nome_produto varchar(150)





