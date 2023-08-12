Create table alunos (
id_aluno SERIAL,
nome VARCHAR (225) NOT NULL,
curso VARCHAR (225) NOT NULL,
PRIMARY KEY (id_aluno) 
)
CREATE TABLE notas (
id_nota SERIAL,
id_aluno SERIAL,
nota FLOAT NOT NULL,
PRIMARY KEY (id_nota),
FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno)
)
Insert into alunos (nome, curso)
VALUES ('Kerli', 'Gastronomia'),
('Bernardete', 'Enfermagem'),
('Gustavo', 'Análise e Desenvolvimento de Sistemas'),
('Isadora', 'Engenharia de Software')
INSERT INTO notas (id_aluno, nota)
VALUES (1, 9.8),
(2, 9.9),
(3, 10),
(4, 10)
SELECT alunos.nome, notas.nota, alunos.curso FROM alunos inner join notas on alunos.id_aluno = notas.id_aluno order by notas.nota desc 
