create database db_pigment;

use db_pigment;

create table tb_cliente (
cd_cliente int primary key,
nome varchar(100),
sobrenome varchar(100),
email varchar(100),
senha varchar(100),
telefone varchar(15),
endereço varchar(255),
data_nascimento date,
cpf varchar(11) unique
);

create table tb_restaurante (
cd_restaurante int primary key,
nome varchar(100),
endereço varchar(255),
telefone varchar(15),
tipo_cozinha varchar(50),
cnpj varchar(14) unique,
horario_funcionamento varchar(50),
avaliação decimal(2,1)
);

create table tb_categoria (
cd_categoria int primary key,
nome_categoria varchar(50)
);

create table tb_produtos (
cd_produto int primary key,
nome varchar(100),
descrição TEXT,
preço decimal(10,2),
foto varchar(255),
id_restaurante int,
categoria int,
foreign key (id_restaurante) references tb_restaurante(cd_restaurante),
foreign key (categoria) references tb_categoria(cd_categoria)
);

create table tb_pedido (
cd_pedido int primary key,
data_hora datetime,
id_cliente int,
id_restaurante int,
stts varchar(50),
valor_total decimal(10,2),
foreign key (id_cliente) references tb_cliente(cd_cliente),
foreign key (id_restaurante) references tb_restaurante(cd_restaurante)
);

create table tb_item_pedido (
id_item int primary key,
quantidade int,
preço decimal(10,2),
id_pedido int,
id_produto int,
foreign key (id_pedido) references tb_pedido(cd_pedido),
foreign key (id_produto) references tb_produto(cd_produto)
);

create table tb_entrega (
cd_entrega int primary key,
data_hora datetime,
id_pedido int,
id_entregador int,
status_entrega varchar(50),
foreign key (id_pedido) references tb_pedido(cd_pedido)
);

create table tb_entregador (
cd_entregador int primary key,
nome varchar(100),
telefone varchar(15),
veículo varchar(50),
placa varchar(10)
);

create table tb_pagamentos (
cd_pagamento int primary key,
id_pedido int,
forma_pagamento varchar(50),
status_pagamento varchar(50),
foreign key (id_pedido) references tb_pedido(cd_pedido)
);

-- Estabelecimentos cadastrados na cidade do usuário
SELECT * FROM TB_RESTAURANTE WHERE Endereco LIKE '%[CIDADE]%';

-- Cartão do estabelecimento
SELECT * FROM TB_RESTAURANTE WHERE CD_Restaurante = [ID_RESTAURANTE];

-- Histórico de compras do cliente nos últimos 15 dias
SELECT * FROM TB_PEDIDO WHERE ID_Cliente = [ID_CLIENTE] AND Data_Hora >= NOW() - INTERVAL 15 DAY;

-- Histórico de compras do cliente nos últimos 30 dias
SELECT * FROM TB_PEDIDO WHERE ID_Cliente = [ID_CLIENTE] AND Data_Hora >= NOW() - INTERVAL 30 DAY;

-- Lista de estabelecimentos favoritos do cliente (considerando que você tem uma tabela para favoritos)
SELECT * FROM TB_RESTAURANTE WHERE CD_Restaurante IN (SELECT ID_Restaurante FROM TB_FAVORITOS WHERE ID_Cliente = [ID_CLIENTE]);
