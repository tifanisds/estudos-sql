EXERCÍCIOS SQL - JOINS
=================================================

Os exercícios a seguir têm como objetivo praticar os comandos SQL relacionados a junção de tabelas.

Assuntos cobrados: INNER JOIN, LEFT JOIN, RIGHT JOIN.

INNER JOIN (Básico)
--------------------------------------------------------------------------------
- 1. Liste os alunos com os cursos em que estão matriculados (nome do aluno, nome do curso).
SELECT a.nome, c.nome AS curso
FROM matriculas m
INNER JOIN alunos a
ON a.id = m.aluno_id
INNER JOIN cursos c
ON c.id = m.curso_id

- 2. Mostre os cursos junto com seus respectivos professores (curso, professor).
SELECT a.nome, c.nome AS curso, p.nome AS professor
FROM matriculas m
INNER JOIN alunos a
ON a.id = m.aluno_id
INNER JOIN cursos c
ON c.id = m.curso_id
INNER JOIN cursos_professores cp
ON cp.curso_id = c.id
INNER JOIN professores p
ON p.id = cp.id

- 3. Liste as matrículas mostrando id da matrícula, nome do aluno, nome do curso.
SELECT m.id, a.nome AS aluno, c.nome AS curso
FROM matriculas m
INNER JOIN alunos a
ON a.id = m.aluno_id
INNER JOIN cursos c
ON c.id = m.curso_id
--------------------------------------------------------------------------------

INNER JOIN (Intermediário)
--------------------------------------------------------------------------------
- 1. Mostre os alunos e os cursos que estão fazendo, junto com o nome do professor responsável.
SELECT a.nome, c.nome, p.nome
FROM matriculas m
INNER JOIN alunos a
ON a.id = m.aluno_id
INNER JOIN cursos c
ON c.id = m.curso_id
INNER JOIN cursos_professores cp
ON c.id = cp.curso_id
INNER JOIN professores p
ON p.id = cp.professor_id

- 2. Liste os alunos que estão matriculados em mais de um curso.
SELECT a.nome, COUNT(m.aluno_id) AS total_matriculas
FROM alunos a
INNER JOIN matriculas m
    ON m.aluno_id = a.id
GROUP BY a.nome
HAVING COUNT(m.aluno_id) > 1;

- 3. Mostre o nome dos professores e a quantidade de alunos matriculados em seus cursos.
SELECT p.nome AS professor, COUNT(m.curso_id) AS quantidade_de_alunos
FROM professores p
INNER JOIN cursos_professores cp
ON cp.professor_id = p.id
INNER JOIN cursos c
ON c.id = cp.curso_id
INNER JOIN matriculas m
ON m.curso_id = cp.curso_id
GROUP BY m.curso_id
--------------------------------------------------------------------------------

LEFT JOIN
--------------------------------------------------------------------------------
- 1. Liste todos os alunos e seus cursos, mas mostre também os alunos que ainda não estão matriculados em nada.
SELECT a.nome AS aluno, c.nome AS curso
FROM alunos a
LEFT JOIN matriculas m
ON m.aluno_id = a.id
LEFT JOIN cursos c
ON c.id = m.curso_id

- 2. Liste todos os cursos e seus professores, mas inclua cursos que ainda não têm professor atribuído.
SELECT c.nome, p.nome
FROM cursos c
LEFT JOIN cursos_professores cp
ON cp.curso_id = c.id
LEFT JOIN professores p
ON p.id = cp.professor_id

- 3. Mostre todos os professores e os cursos que ministram, incluindo professores que não têm curso atribuído.
SELECT p.nome, c.nome
FROM professores p
LEFT JOIN cursos_professores cp
ON cp.professor_id = p.id
LEFT JOIN cursos c
ON c.id = cp.id
--------------------------------------------------------------------------------

RIGHT JOIN
--------------------------------------------------------------------------------
- 1. Liste todos os cursos e seus alunos, garantindo que apareçam mesmo os cursos sem matrícula.
SELECT c.nome AS curso, m.id AS matricula, a.nome AS aluno
FROM alunos a
RIGHT JOIN matriculas m
ON m.aluno_id = a.id
RIGHT JOIN cursos c
ON c.id = m.curso_id

- 2. Listar todos os cursos e seus alunos. Mesmo que o curso não tenha nenhum aluno matriculado, ele deve aparecer.
SELECT c.nome AS curso, a.nome AS aluno
FROM alunos a
RIGHT JOIN matriculas m
ON m.aluno_id = a.id
RIGHT JOIN cursos c
ON c.id = m.curso_id

- 3. Listar todos os professores e os cursos que lecionam. Mesmo que existam cursos sem professor, eles devem aparecer.
SELECT p.nome AS professor, c.nome AS curso
FROM professores p
RIGHT JOIN cursos_professores cp
ON cp.professor_id = p.id
RIGHT JOIN cursos c
ON c.id = cp.curso_id
--------------------------------------------------------------------------------
