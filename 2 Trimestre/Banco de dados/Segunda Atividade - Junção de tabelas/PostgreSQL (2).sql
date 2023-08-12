Create table clientes (
id_cliente SERIAL,
nome VARCHAR (225) NOT NULL,
email VARCHAR (225) NOT NULL,
PRIMARY KEY (id_cliente) 
)
CREATE TABLE pedidos (
id_pedido SERIAL,
id_cliente SERIAL,
valor_pedido FLOAT NOT NULL,
PRIMARY KEY (id_pedido),
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
)
Insert into clientes (nome, email)
VALUES ('Kerli', 'kerlialimentos@gmail.com'),
('Bernardete', 'detelinda@gmail.com'),
('Gustavo', 'gustavoidosolindo@gmail.com'),
('Isadora', 'isadorothy@gmail.com')
INSERT INTO pedidos (id_cliente, valor_pedido)
VALUES (1, 2909),
(2, 0511),
(3, 29092005),
(4, 05112005)
SELECT clientes.nome, pedidos.valor_pedido FROM clientes inner join pedidos on clientes.id_cliente = pedidos.id_cliente order by pedidos.valor_pedido desc 
