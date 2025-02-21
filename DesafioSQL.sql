CREATE DATABASE DESAFIO;

USE DESAFIO;

CREATE TABLE Alunos (
    ID_Aluno SERIAL PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Data_Nascimento DATETIME NULL,
    Curso VARCHAR(45)
);

CREATE TABLE Notas (
    ID_Nota SERIAL PRIMARY KEY,
    ID_Aluno INT,
    Disciplina VARCHAR(45) NULL,
    Nota FLOAT NULL
);

INSERT INTO Alunos (Nome, Data_Nascimento, Curso) VALUES 
('Ana', '2000-04-15', 'Ciência da Computação'),
('Bruno', '1999-08-23', 'Ciência da Computação'),
('Carlos', '2001-01-30', 'ADS'),
('Daniela', '2000-12-05', 'Ciência da Computação'),
('Eduardo', '1998-06-17', 'ADS'),
('Fernanda', '2001-11-09', 'Engenharia da Computação'),
('Gustavo', '2000-03-21', 'Ciência da Computação'),
('Helena', '1999-07-02', 'ADS'),
('Igor', '2000-10-11', 'Ciência da Computação'),
('Juliana', '2001-02-28', 'Engenharia da Computação');

INSERT INTO Notas (ID_Aluno, Disciplina, Nota) VALUES 
(1, 'Estruturas de Dados', 8.5),
(2, 'Algoritmos Avançados', 7.8),
(3, 'Sistemas Operacionais', 9.0),
(4, 'Banco de Dados', 8.2),
(5, 'Redes de Computadores', 7.5),
(6, 'Engenharia de Software', 8.7),
(7, 'Programação Orientada a Objetos', 9.1),
(8, 'Inteligência Artificial', 8.3),
(9, 'Computação Gráfica', 7.9),
(10, 'Teoria da Computação', 8.0);

SELECT COUNT(ID_Aluno)
FROM Alunos
WHERE Curso = 'ADS';

SELECT SUM(Nota)
FROM Notas;

SELECT AVG(Nota)
From Notas;

SELECT Curso
FROM Alunos
GROUP BY Curso;

SELECT *
FROM Notas
ORDER BY Nota DESC;
























 
 