create database IF NOT EXISTS ecommerce;
use ecommerce;

create table cliente (
	id_client int not null primary key auto_increment,
	nome varchar(30) not null,
    enreco varchar(50) not null,
    email varchar(30) not null,
    celular varchar(14) not null,
    data_nascimento date not null
);

create table produto (
	id_pedido int not null primary key auto_increment,
	nome varchar(30) not null,
    preco decimal(8, 2) not null,
    descricao varchar(300) not null,
    qtd_estoque tinyint not null
);

create table pedido (
	id_pedido int not null primary key auto_increment,
    data_compra data not null,
    valor_total decimal(8, 2) not null
);

create table item (

);