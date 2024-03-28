drop database ecommerce_db;

CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

CREATE TABLE IF NOT EXISTS cliente (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    tel VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE IF NOT EXISTS produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(10, 2),
    descricao TEXT,
    qtd INT
);

CREATE TABLE IF NOT EXISTS pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    clienteID INT,
    data_compra DATE,
    valor_total DECIMAL(12, 2),
    entrega_estimada DATE,
    FOREIGN KEY (clienteID) REFERENCES cliente(id_client)
);

CREATE TABLE IF NOT EXISTS itens_pedido (
    itens_id INT AUTO_INCREMENT PRIMARY KEY,
    pedidoID INT,
    produtoID INT,
    qtd INT,
    valor_unitario DECIMAL(10, 2),
    valor_total DECIMAL(12, 2),
    FOREIGN KEY (pedidoID) REFERENCES pedido(id_pedido),
    FOREIGN KEY (produtoID) REFERENCES produto(id_produto)
);