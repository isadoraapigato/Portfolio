Create table Aplicativo (
  id_app TEXT not NULL,
  nome VARCHAR(25),
  id_usuario TEXT NOT NULL,
  id_aluno TEXT NOT NULL,
  id_professor TEXT NOT NULL,
  id_grafico TEXT NOT NULL,
  id_design TEXT NOT NULL,
  id_calendario TEXT NOT NULL,
  PRIMARY KEY (id_app),
  FOREIGN KEy (id_usuario, id_aluno, id_professor, id_grafico, id_design, id_calendario)
  REFERENCES (Usuario, Aluno, Professor, Grafico, Design, Calendario)
);

Create table Usuario (
  id_usuario TEXT NOT NULL,
  login VARCHAR(100) NOT NULL,
  senha VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  horario_entrada DATE NOT NULL,
  horario_saida DATE NOT NULL,
  contato_com_psicologos VARCHAR (30) NOT NULL,
  feedback TEXT,
  
  PRIMARY KEY (id_usuario)
);

Create table Aluno (
  id_aluno TEXT NOT NULL,
  PRIMARY KEY (id_usuario)
);

Create table Professor (
   id_professor TEXT NOT NULL,
  cnpj VARCHAR () 
  disciplina VARCHAR () 
  qntAulas 
  PRIMARY KEY (id_usuario)
  
);

Create table Grafico (
  id_grafico TEXT NOT NULL,
  desempenhoMensal
  PRIMARY KEY (id_usuario)
);

Create table Design (
  id_design TEXT NOT NULL,
  PRIMARY KEY (id_usuario)
);

Create table Calendario (
  id_calendario TEXT NOT NULL,
  PRIMARY KEY (id_usuario)
);

CREATE TABLE petshop(
  nome varchar(20) not NULL,
  cnpj VARCHAR (14) not NULL,
  endereco VARCHAR(50) not NULL,
  data_atendimento date not NULL,
  preco_atendimento DECIMAL(7,2) not NULL,
  codigo serial,
  PRIMARY key (codigo)
  )
 
  insert into petshop (nome, cnpj, endereco, data_atendimento, preco_atendimento)
  VALUES ('QualQuer1', '347621983', 'Rua Aderbal Ramos da Silva', '2023-03-14', '129.90'),
 ('Sofistcão', '28476392', 'Centro Histórico de São José', '2023-03-13', '25800.99'),
 ('Pettop', '28476396','Centro Histórico de Florianópolis', '2023-04-04', '2345.50'),
 ('CãoRei', '28476397','Rua Aderbal Ramos dos Santos', '2023-04-05', '2010.50'),
 ('CheiroCão', '28476398','Centro Histórico de Imbituba', '2023-04-06', '2155.50'),
 ('CãoCat', '28476399','Avenida Mauro Ramos', '2023-04-07', '2020.50'),
 ('PrincessPet', '28476370',' Rua Afonso Floriano Campos', '2023-04-08', '20044.50'),
 ('Petme', '28476371','Rua Ardoina da Silva Lemos', '2023-04-09', '2345.50'),
 ('BragaShop', '28476372',' Rua Casemiro Francisco', '2023-04-10', '110.50'),
 ('CatTudo', '28476374','Rua Maria dos Santos', '2023-04-12', '1000.50')
 
  SELECT * from petshop