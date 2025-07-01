EXERCÍCIOS SQL - CRIAÇÃO E MANIPULAÇÃO DE TABELAS
=================================================

Os exercícios a seguir têm como objetivo praticar os comandos SQL relacionados à criação,
modificação e atualização de tabelas em um banco de dados relacional.

Assuntos cobrados: CREATE TABLE, PRIMARY KEY, AUTO_INCREMENT, INSERT INTO, UPDATE, DELETE, 
ALTER TABLE e DROP TABLE.

--------------------------------------------------------------------------------
1. Crie uma tabela chamada "funcionarios" com as seguintes colunas:
   - id (inteiro, chave primária, auto_increment)
   - nome (texto até 100 caracteres)
   - cargo (texto até 50 caracteres)
   - salario (decimal com 2 casas)
--------------------------------------------------------------------------------
CREATE TABLE funcionarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	cargo VARCHAR(50),
	salario DECIMAL(10, 2)
);


--------------------------------------------------------------------------------
2. Insira 5 funcionários fictícios na tabela com diferentes cargos e salários.
--------------------------------------------------------------------------------
INSERT INTO funcionarios (nome, cargo, salario) VALUES 
('João Pedro', 'faxineiro', 2000.80),
('Maria Alice', 'gerente', 6000.80),
('Luís', 'contador', 5000.80),
('Júlia', 'recepcionista', 4000.80),
('Maria Clara', 'faxineiro', 2000.80);


--------------------------------------------------------------------------------
3. Atualize o salário do funcionário chamado "Maria Alice" para 5000.00.
--------------------------------------------------------------------------------
UPDATE funcionarios
SET salario = 5000.00
WHERE nome = "Maria Alice"


--------------------------------------------------------------------------------
4. Altere a tabela "funcionarios" adicionando uma nova coluna chamada "departamento"
   (texto até 50 caracteres).
--------------------------------------------------------------------------------
ALTER TABLE funcionarios
ADD departamento VARCHAR(100);


--------------------------------------------------------------------------------
5. Atualize o campo "departamento" dos funcionários de acordo com o cargo.
   Exemplo: se o cargo for "Analista", o departamento será "TI".
--------------------------------------------------------------------------------
UPDATE funcionarios
SET departamento = 'limpeza'
WHERE cargo = 'faxineiro'


--------------------------------------------------------------------------------
6. Remova da tabela o funcionário cujo nome seja "Júlia".
--------------------------------------------------------------------------------
DELETE FROM funcionarios 
WHERE nome = 'Júlia'


--------------------------------------------------------------------------------
7. Altere o nome da coluna "cargo" para "funcao".
--------------------------------------------------------------------------------
ALTER TABLE funcionarios
CHANGE cargo funcao VARCHAR(100)


--------------------------------------------------------------------------------
9. Crie uma nova tabela chamada "departamentos" com:
   - id (chave primária, auto_increment)
   - nome (varchar 100)
   - localizacao (varchar 100)
--------------------------------------------------------------------------------
CREATE TABLE departamento (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	localizacao VARCHAR(100)
)


--------------------------------------------------------------------------------
10. Exclua a tabela "departamentos" do banco de dados.
--------------------------------------------------------------------------------
DROP TABLE departamento;

