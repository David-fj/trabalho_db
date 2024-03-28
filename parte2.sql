use ecommerce_db;

INSERT INTO cliente (nome, email, tel, data_nascimento) VALUES
("David", "sla1@gmail.com", "1283712312", "2024-03-02"),
("Ujhafpussy", "sla2@gmail.com", "121232178", "2023-02-10"),
("kylambuza", "sla3@gmail.com", "75875343", "2022-12-10"),
("Bruno", "sla4@gmail.com", "47883774", "2021-08-12"),
("MasterMinado", "sla5@gmail.com", "7467839", "2022-10-09"),
("Derereka", "sla6@gmail.com", "984843", "2022-01-09"),
("Samuela", "sla7@gmail.com", "7612623", "2020-12-01"),
("Nsei1", "sla8@gmail.com", "1111111111111", "2022-09-01"),
("Nsei2", "sla9@gmail.com", "111111111111", "2023-10-01"),
("Nsei3", "sla10@gmail.com", "11111111111", "2021-11-01");

INSERT INTO produto (nome, preco, descricao, qtd) VALUES
('1', 20.20, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 12),
('2', 54.40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 21),
('3', 99.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 38),
('4', 11.12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 44),
('5', 98.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 55),
('6', 333.98, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 61),
('7', 122.54, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 73),
('8', 331.65, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 89),
('9', 142.54, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 95),
('10', 221.54, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 101);

INSERT INTO pedido (clienteID, data_compra, valor_total, entrega_estimada) VALUES
(1, '2020-01-01', 663.00, '2023-02-01'),
(2, '2020-01-02', 634.00, '2023-02-02'),
(3, '2020-01-03', 1.00, '2023-02-03'),
(4, '2020-01-04', 3.00, '2023-02-04'),
(5, '2020-01-05', 12.50, '2023-02-05'),
(6, '2020-01-06', 1223.00, '2023-02-06'),
(7, '2020-01-07', 156.00, '2023-02-07'),
(8, '2020-01-08', 133.00, '2023-02-08'),
(9, '2020-01-09', 112.00, '2023-02-09'),
(10, '2020-01-10', 111.00, '2023-02-10');

INSERT INTO itens_pedido (pedidoID, produtoID, qtd, valor_unitario, valor_total) VALUES
(1, 1, 1, 143.00, 132.67),
(2, 2, 10, 133.00, 232.67),
(3, 3, 11, 83.00, 432.67),
(4, 4, 12, 73.00, 442.67),
(5, 5, 13, 63.00, 452.67),
(6, 6, 15, 33.00, 462.67),
(7, 7, 16, 123.00, 732.67),
(8, 8, 188, 413.00, 4832.67),
(9, 9, 196, 43.00, 325.67),
(10, 10, 143, 433.00, 4332.67);

UPDATE cliente
SET nome = 'asdasdsa'
WHERE id_client = 2;

UPDATE produto
SET nome = 'produto novo'
WHERE id_produto = 6;

UPDATE produto
SET nome = 'novo produto no lugar do produto velho'
WHERE id_produto = 8;

UPDATE pedido
SET valor_total = 613.00
WHERE id_pedido = 1;

DELETE FROM itens_pedido WHERE itens_id = 9;
DELETE FROM itens_pedido WHERE itens_id = 10;