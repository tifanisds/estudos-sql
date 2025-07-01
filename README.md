# 📘 Estudos em SQL

Bem-vindo(a) ao meu repositório de estudos em **SQL**!

Este espaço foi criado com o objetivo de organizar e documentar meu processo de aprendizado sobre bancos de dados relacionais de forma clara, prática e acessível.

Aqui você encontrará:

✅ Explicações simples e diretas  
✅ Exemplos reais com código SQL  
✅ Exercícios com respostas  
✅ Tópicos do básico ao avançado  
✅ Dicas e boas práticas  
✅ Ilustrações e observações úteis  

---

> 💡 Este repositório é ideal para iniciantes que estão dando os primeiros passos em SQL ou para quem deseja revisar os principais conceitos com uma abordagem didática.

---

📌 **O que você pode esperar:**

- Como criar e manipular tabelas  
- Inserir, atualizar e excluir dados  
- Realizar consultas com `SELECT`  
- Agrupar, ordenar e filtrar resultados  
- Trabalhar com funções agregadas  
- Automatizar tarefas com Shell e Cron Jobs  
- Validar entradas com Expressões Regulares (Regex)  
- E muito mais!

---

🔧 **Objetivo do projeto:**

Este material serve tanto como referência pessoal quanto como fonte de estudo para outras pessoas que estão começando. Sinta-se à vontade para explorar, sugerir melhorias ou contribuir com novos exemplos e ideias!

---

## 🧱 Comandos SQL Fundamentais

Esta seção reúne explicações claras e exemplos práticos dos principais comandos SQL utilizados para consultar e manipular dados em um banco de dados relacional.

---

### 1️⃣ SELECT

O comando `SELECT` é utilizado para **consultar dados** de uma ou mais tabelas. Ele permite escolher quais colunas você deseja visualizar.

```sql
SELECT nome, idade FROM alunos;
```
Retorna os nomes e idades de todos os registros da tabela alunos.

Para selecionar todas as colunas, usa-se o asterisco (*):

```sql
SELECT * FROM alunos;
```
![Filtragem com select](images/)


### 2️⃣ WHERE
O WHERE é usado para filtrar registros, retornando apenas aqueles que atendem a uma condição específica.

```sql
SELECT nome FROM alunos WHERE idade >= 18;
```
Retorna apenas os alunos com 18 anos ou mais.

É possível combinar múltiplas condições com operadores lógicos (ver seção Operadores Lógicos).


### 3️⃣ ORDER BY
O ORDER BY organiza os resultados em ordem crescente (ASC) ou decrescente (DESC).

```sql
-- Ordem crescente (padrão):
SELECT nome, idade FROM alunos ORDER BY idade;

-- Ordem decrescente:
SELECT nome, idade FROM alunos ORDER BY idade DESC;
```
Você também pode ordenar por mais de uma coluna:

```sql
SELECT nome, idade FROM alunos ORDER BY idade DESC, nome ASC;
```
![Ordenando decrescente](images/)
![Ordenando crescente](images/)


### 4️⃣ LIMIT
O LIMIT restringe a quantidade de registros retornados. É útil quando se quer os "top N" resultados.

```sql
SELECT * FROM alunos LIMIT 5;
```
Retorna apenas os 5 primeiros registros da tabela alunos.

![Mostrando utilização do limit](images/)


### 5️⃣ GROUP BY
O GROUP BY serve para agrupar registros com base em uma ou mais colunas — geralmente usado junto com funções agregadas (COUNT, SUM, AVG, MAX, MIN).

```sql
SELECT curso, COUNT(*) FROM alunos GROUP BY curso;
```
Conta quantos alunos existem em cada curso.



### 6️⃣ HAVING
O HAVING filtra os grupos criados com GROUP BY. Ele permite aplicar condições em funções agregadas.

```sql
SELECT curso, COUNT(*) AS total_alunos
FROM alunos 
GROUP BY curso 
HAVING COUNT(*) > 10;
```
Retorna apenas os cursos com mais de 10 alunos.

⚠️ Importante: não se pode usar WHERE com funções agregadas — nesse caso, usa-se HAVING.



### 7️⃣ Operadores Lógicos
Operadores lógicos são usados junto com WHERE ou HAVING para combinar ou inverter condições:

✅ AND
Todas as condições devem ser verdadeiras.
```sql
SELECT * FROM alunos 
WHERE idade > 18 AND curso = 'Engenharia';
```

✅ OR
Pelo menos uma condição deve ser verdadeira.
```sql
SELECT * FROM alunos 
WHERE cidade = 'Salvador' OR cidade = 'Feira de Santana';
```

✅ NOT
Inverte o resultado de uma condição.
```sql
SELECT * FROM alunos 
WHERE NOT cidade = 'Salvador';
```
📷 Imagem sugerida: Diagrama de lógica booleana mostrando AND / OR / NOT em ação.

### Em breve: 🔍 Consultas avançadas com JOIN
