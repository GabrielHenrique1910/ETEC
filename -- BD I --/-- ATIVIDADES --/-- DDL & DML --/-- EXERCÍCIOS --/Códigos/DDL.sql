create database db_ifood;

use db_ifood;

create table categoria (
cd_categoria int auto_increment not null primary key,
nome_categoria varchar(50) not null unique
);

create table cidade (
cd_cidade int auto_increment not null primary key,
nm_cidade varchar(45) not null unique,
cep_cidade int not null
);

create table restaurante (
cd_restaurante int auto_increment not null primary key,
nome varchar(100) not null,
endereco longtext not null,
telefone varchar(15) not null unique,
tipo_cozinha text not null,
cnpj varchar(14) not null unique,
horario_entrada time not null,
horario_saida time not null,
avaliacao decimal(2,1) not null,
id_cidade int not null,
foreign key (id_cidade) references cidade(cd_cidade)
);

create table produtos (
cd_produto int auto_increment not null primary key,
nome varchar(100) not null,
descricao text not null,
preco decimal(10,2) not null,
foto varchar(255),
id_restaurante int not null,
categoria int not null,
foreign key (id_restaurante) references restaurante(cd_restaurante),
foreign key (categoria) references categoria(cd_categoria)
);

create table cliente (
cd_cliente int auto_increment not null primary key,
nome varchar(100) not null,
sobrenome varchar(100) not null,
email varchar(100) not null unique,
senha varchar(100) not null,
telefone varchar(11) not null unique,
endereco varchar(255) not null,
data_nascimento date not null,
cpf varchar(11) not null unique
);

create table pedido (
cd_pedido int auto_increment not null primary key,
hora_pedido time not null,
id_cliente int not null,
id_restaurante int not null,
stts char(1) not null,
valor_total decimal(10,2) not null,
foreign key (id_cliente) references cliente(cd_cliente),
foreign key (id_restaurante) references restaurante(cd_restaurante)
);

create table entrega (
cd_entrega int auto_increment not null primary key,
data_entrega time not null,
id_pedido int not null,
id_entregador int not null,
status_entrega varchar(50) not null,
foreign key (id_pedido) references pedido(cd_pedido)
);

create table entregador (
cd_entregador int auto_increment not null primary key,
nome varchar(100) not null,
telefone varchar(15) not null unique,
horario_saida time not null,
veiculo varchar(50) not null,
placa varchar(50) not null unique
);

create table pagamentos (
cd_pagamento int auto_increment not null primary key,
id_pedido int not null,
forma_pagamento varchar(50) not null,
status_pagamento char(1) not null,
foreign key (id_pedido) references pedido(cd_pedido)
);

create table tb_pedido (
id_produto int not null,
id_pedido int not null,
quantidade varchar(45) not null,
preco decimal(10,2) not null,
foreign key (id_produto) references produtos(cd_produto),
foreign key (id_pedido) references pedido(cd_pedido),
primary key (id_produto, id_pedido)
);
