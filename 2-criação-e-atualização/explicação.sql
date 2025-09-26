COMANDOS DE CRIAÇÃO E ATUALIZAÇÃO DE TABELAS SQL
================================================

Este documento reúne os principais comandos SQL utilizados para criar, alterar e inserir dados 
em tabelas dentro de um banco de dados relacional. Os tópicos abordados são: CREATE TABLE, 
INSERT INTO, UPDATE, DELETE, ALTER TABLE, PRIMARY KEY, AUTO_INCREMENT e DROP TABLE.

--------------------------------------------------------------------------------
1. CREATE TABLE
--------------------------------------------------------------------------------

O comando CREATE TABLE é utilizado para criar uma nova tabela no banco de dados, definindo 
suas colunas, tipos de dados e restrições.

Exemplo:
    CREATE TABLE clientes (
        id INT PRIMARY KEY,
        nome VARCHAR(100),
        idade INT,
        cidade VARCHAR(100)
    );

Neste exemplo, a tabela "clientes" possui 4 colunas, e a coluna "id" é definida como chave primária.

--------------------------------------------------------------------------------
2. PRIMARY KEY
--------------------------------------------------------------------------------

A PRIMARY KEY (chave primária) identifica de forma única cada registro da tabela. Ela garante 
que os valores da coluna não se repitam e não sejam nulos.

Exemplo:
    id INT PRIMARY KEY

É comum definir a chave primária na criação da tabela.

--------------------------------------------------------------------------------
3. AUTO_INCREMENT
--------------------------------------------------------------------------------

O AUTO_INCREMENT é usado com colunas numéricas para gerar automaticamente um valor único e sequencial.

Exemplo:
    id INT AUTO_INCREMENT PRIMARY KEY

A cada novo registro, o valor do "id" será incrementado automaticamente (1, 2, 3...).

--------------------------------------------------------------------------------
4. INSERT INTO
--------------------------------------------------------------------------------

O comando INSERT INTO é usado para inserir novos dados em uma tabela.

Exemplo:
    INSERT INTO clientes (id, nome, idade, cidade)
    VALUES (1, 'Ana', 22, 'Salvador');

Também é possível inserir múltiplas linhas:
    INSERT INTO clientes (id, nome, idade, cidade) VALUES
    (2, 'João', 35, 'Recife'),
    (3, 'Carla', 40, 'Salvador');

--------------------------------------------------------------------------------
5. UPDATE
--------------------------------------------------------------------------------

O comando UPDATE atualiza valores já existentes em uma tabela.

Exemplo:
    UPDATE clientes
    SET idade = 23
    WHERE nome = 'Ana';

A cláusula WHERE é importante para garantir que apenas registros específicos sejam alterados.

--------------------------------------------------------------------------------
6. DELETE
--------------------------------------------------------------------------------

O DELETE remove registros da tabela.

Exemplo:
    DELETE FROM clientes
    WHERE cidade = 'Recife';

OBS: Sem WHERE, todos os registros da tabela serão apagados!

--------------------------------------------------------------------------------
7. ALTER TABLE
--------------------------------------------------------------------------------

O ALTER TABLE modifica a estrutura de uma tabela existente. Pode ser usado para adicionar, 
remover ou alterar colunas.

- Adicionar nova coluna:
    ALTER TABLE clientes ADD email VARCHAR(100);

- Renomear coluna:
    ALTER TABLE clientes CHANGE nome nome_completo VARCHAR(150);

- Modificar tipo da coluna:
    ALTER TABLE clientes MODIFY idade TINYINT;

- Remover coluna:
    ALTER TABLE clientes DROP COLUMN cidade;

- Adicionar chave primária (caso não exista):
    ALTER TABLE clientes ADD PRIMARY KEY (id);

--------------------------------------------------------------------------------
8. DROP TABLE
--------------------------------------------------------------------------------

O DROP TABLE exclui completamente uma tabela, removendo sua estrutura e todos os dados contidos nela.

Exemplo:
    DROP TABLE clientes;

Use com cuidado, pois a exclusão é definitiva.

--------------------------------------------------------------------------------

