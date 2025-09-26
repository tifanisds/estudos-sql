-- 1. Alunos
CREATE TABLE Alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50)
);

INSERT INTO Alunos (id, nome, cidade) VALUES
(1, 'Mariana Alves', 'São Paulo'),
(2, 'Carlos Pereira', 'Rio de Janeiro'),
(3, 'Fernanda Souza', 'Curitiba'),
(4, 'Lucas Silva', 'Belo Horizonte');

-- 2. Cursos
CREATE TABLE Cursos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    carga_horaria INT
);

INSERT INTO Cursos (id, nome, carga_horaria) VALUES
(1, 'Banco de Dados', 60),
(2, 'Programação Web', 80),
(3, 'Redes de Computadores', 40),
(4, 'Inteligência Artificial', 100);

-- 3. Professores
CREATE TABLE Professores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100)
);

INSERT INTO Professores (id, nome, especialidade) VALUES
(1, 'João Mendes', 'Banco de Dados'),
(2, 'Ana Costa', 'Programação'),
(3, 'Pedro Santos', 'Redes'),
(4, 'Carla Lima', 'IA');

-- 4. Matriculas
CREATE TABLE Matriculas (
    id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

INSERT INTO Matriculas (id, aluno_id, curso_id) VALUES
(1, 1, 1), -- Mariana em Banco de Dados
(2, 1, 2), -- Mariana em Programação Web
(3, 2, 3), -- Carlos em Redes
(4, 3, 4); -- Fernanda em IA

-- 5. Cursos_Professores (quem ministra cada curso)
CREATE TABLE Cursos_Professores (
    id INT PRIMARY KEY,
    curso_id INT,
    professor_id INT,
    FOREIGN KEY (curso_id) REFERENCES Cursos(id),
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);

INSERT INTO Cursos_Professores (id, curso_id, professor_id) VALUES
(1, 1, 1), -- Banco de Dados - João
(2, 2, 2), -- Programação Web - Ana
(3, 3, 3), -- Redes - Pedro
(4, 4, 4); -- IA - Carla