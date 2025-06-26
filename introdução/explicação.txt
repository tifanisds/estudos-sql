EXPICAÇÕES SOBRE COMANDOS SQL FUNDAMENTAIS
==========================================

Este documento reúne explicações detalhadas dos principais comandos SQL utilizados para consultar 
e manipular dados em um banco de dados relacional. Os tópicos abordados são: SELECT, WHERE, ORDER BY, 
LIMIT, GROUP BY, HAVING e operadores lógicos.

--------------------------------------------------------------------------------
1. SELECT
--------------------------------------------------------------------------------

O comando SELECT é utilizado para consultar dados de uma ou mais tabelas. Ele permite especificar 
quais colunas se deseja visualizar.

Exemplo:
    SELECT nome, idade FROM alunos;

Esse comando retorna os nomes e idades de todos os registros da tabela "alunos".

Também é possível selecionar todas as colunas usando o asterisco (*):
    SELECT * FROM alunos;

--------------------------------------------------------------------------------
2. WHERE
--------------------------------------------------------------------------------

O WHERE é utilizado para filtrar registros, retornando apenas aqueles que atendem a uma determinada condição.

Exemplo:
    SELECT nome FROM alunos WHERE idade >= 18;

Esse comando retorna apenas os alunos com 18 anos ou mais.

É possível combinar múltiplas condições usando operadores lógicos (ver seção 7).

--------------------------------------------------------------------------------
3. ORDER BY
--------------------------------------------------------------------------------

O ORDER BY organiza os resultados em ordem crescente (ASC) ou decrescente (DESC).

Exemplos:

    - Crescente (padrão):
        SELECT nome, idade FROM alunos ORDER BY idade;

    - Decrescente:
        SELECT nome, idade FROM alunos ORDER BY idade DESC;

Também é possível ordenar por mais de uma coluna:
    SELECT nome, idade FROM alunos ORDER BY idade DESC, nome ASC;

--------------------------------------------------------------------------------
4. LIMIT
--------------------------------------------------------------------------------

O LIMIT restringe a quantidade de registros retornados pela consulta. É muito útil para retornar 
apenas os "top N" resultados.

Exemplo:
    SELECT * FROM alunos LIMIT 5;

Esse comando retorna apenas os 5 primeiros registros da tabela.

--------------------------------------------------------------------------------
5. GROUP BY
--------------------------------------------------------------------------------

O GROUP BY é usado para agrupar registros com base em uma ou mais colunas, geralmente junto com 
funções agregadas como COUNT, SUM, AVG, MAX, MIN.

Exemplo:
    SELECT curso, COUNT(*) FROM alunos GROUP BY curso;

Esse comando conta quantos alunos existem em cada curso.

--------------------------------------------------------------------------------
6. HAVING
--------------------------------------------------------------------------------

O HAVING é utilizado para filtrar grupos após o agrupamento com GROUP BY. Ele é necessário quando se
deseja aplicar condições sobre funções agregadas.

Exemplo:
    SELECT curso, COUNT(*) AS total_alunos 
    FROM alunos 
    GROUP BY curso 
    HAVING COUNT(*) > 10;

Esse comando retorna apenas os cursos com mais de 10 alunos.

Importante: não se pode usar WHERE com funções agregadas, por isso usamos HAVING.

--------------------------------------------------------------------------------
7. OPERADORES LÓGICOS
--------------------------------------------------------------------------------

São utilizados em conjunto com WHERE ou HAVING para combinar ou inverter condições.

- AND: exige que todas as condições sejam verdadeiras.
    Exemplo:
        SELECT * FROM alunos WHERE idade > 18 AND curso = 'Engenharia';

- OR: exige que pelo menos uma das condições seja verdadeira.
    Exemplo:
        SELECT * FROM alunos WHERE cidade = 'Salvador' OR cidade = 'Feira de Santana';

- NOT: inverte o resultado de uma condição.
    Exemplo:
        SELECT * FROM alunos WHERE NOT cidade = 'Salvador';

--------------------------------------------------------------------------------

