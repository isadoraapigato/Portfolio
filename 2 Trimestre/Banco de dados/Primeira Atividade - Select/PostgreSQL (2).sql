Create table filme (
id_filme SERIAL, 
nome VARCHAR (235) NOT NULL, 
genero VARCHAR (235) NOT NULL,
duracao TIME NOT NULL,
data_lancamento DATE NOT NULL,
avaliacao FLOAT NOT NULL,
PRIMARY KEY (id_filme) 
)
Insert into filme (nome, genero, duracao, data_lancamento, avaliacao)
Values ('a princesa e o sapo', 'conto de fadas', '01:37:00', '2009-12-11', 8.6),
('enrolados', 'conto de fadas', '01:40:00', '2011-01-07', 8.6),
('moana', 'musical', '01:47:00', '2017-01-05', 8.5),
('o castelo animado', 'fantasia', '01:59:00', '2005-07-16', 9.6),
('a viagem de chihiro', 'fantasia', '02:05:00', '2003-07-18', 9.5)
CREATE table espectador (
id_espectador SERIAL,
fk_id_filme SERIAL,
idade INT NOT NULL,
nome VARCHAR (235) NOT NULL,
cpf VARCHAR (14) NOT NULL, 
cep VARCHAR (14) NOT NULL, 
PRIMARY KEY (id_espectador),
FOREIGN key (fk_id_filme) REFERENCES filme (id_filme)
)
Insert into espectador (nome, idade, cpf, cep, fk_id_filme)
VALUES ('gustavo braga', 17, '118.506.859-75', '88130465',1), 
('isadora velho', 17, '110.026.529-52', '88132218',2),
('aurora', 3, '000.000.000-00', '88130418', 5),
('ravi', 5, '123.456.789-10', '88130418', 4),
('helena', 2, '111.213.141-51', '88130418' , 3)
select * from espectador where idade < 17
SELECT * from espectador where idade = 17
SELECT * from filme where avaliacao != 16 order by nome asc 
select * from filme order by avaliacao DESC