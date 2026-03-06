create database db_mercado;

use db_mercado;

create table tb_cliente (
id_cliente int primary key auto_increment not null,
nome_cliente varchar(90) not null, 
cpf_cliente varchar(12) not null, 
endereco_cliente varchar(200), 
);

create table tb_produtos (
id_produto int primary key auto_increment not null,
nome_produto varchar(50) not null,
marca_produto varchar(50) not null,
preco_produto decimal(6,2) not null,
data_fabricacao date not null, 
data_validade date not null,
);

create table tb_funcionario (
id_funcionario int primary key auto_increment not null, 
nome_funcionario varchar(90) not null,
cargo_funcionario varchar(30) not null, 
cpf_funicionario varchar(12) not null, 
salario_funcionario decimal(8,2) not null, 
);

create table tb_carrinho (
id_carrinho int primary key auto_increment not null,
produtos_carrinho varchar(30) not null, 
quantidade_produtos int not null, 
preco_carrinho decimal(7,2) not null, 
);

create table tb_pagamento (
id_pagamento int primary key auto_increment not null,
valor_pagamento decimal(7,2) not null, 
forma_pagamento enum('cartão', 'dinheiro físico', 'pix', 'VR', 'VA') not null, 
);

create table tb_nota_fiscal