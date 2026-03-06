create database db_mercado;
use db_mercado;

create table tb_cliente (
id_cliente int primary key auto_increment not null,
nome_cliente varchar(90) not null,
cpf_cliente varchar(12) not null,
endereco_cliente varchar(200)
);

create table tb_funcionario (
id_funcionario int primary key auto_increment not null,
nome_funcionario varchar(90) not null,
cargo_funcionario varchar(30) not null,
cpf_funcionario varchar(12) not null,
salario_funcionario decimal(8,2) not null
);

create table tb_produtos (
id_produto int primary key auto_increment not null,
nome_produto varchar(50) not null,
marca_produto varchar(50) not null,
preco_produto decimal(6,2) not null,
data_fabricacao date not null,
data_validade date not null
);

create table tb_estoque (
id_estoque int primary key auto_increment not null,
id_produto int not null unique,
quantidade int not null,
local_armazenamento varchar(100),
foreign key (id_produto) references tb_produtos(id_produto)
);

create table tb_fornecedor (
id_fornecedor int primary key auto_increment not null,
nome_fornecedor varchar(100) not null,
contato_fornecedor varchar(100),
telefone_fornecedor varchar(20),
email_fornecedor varchar(100)
);

create table tb_produto_fornecedor (
id_produto int not null,
id_fornecedor int not null,
primary key (id_produto, id_fornecedor),
foreign key (id_produto) references tb_produtos(id_produto),
foreign key (id_fornecedor) references tb_fornecedor(id_fornecedor)
);

create table tb_carrinho (
id_carrinho int primary key auto_increment not null,
produtos_carrinho varchar(30) not null,
quantidade_produtos int not null,
preco_carrinho decimal(7,2) not null
);

create table tb_carrinho_produto (
id_carrinho int not null,
id_produto int not null,
quantidade int not null,
preco_unitario decimal(10,2) not null,
primary key (id_carrinho, id_produto),
foreign key (id_carrinho) references tb_carrinho(id_carrinho),
foreign key (id_produto) references tb_produtos(id_produto)
);

create table tb_venda (
id_venda int primary key auto_increment not null,
id_cliente int not null,
id_funcionario int,
id_carrinho int not null,
data_venda datetime default current_timestamp,
total_venda decimal(7,2) not null,
foreign key (id_cliente) references tb_cliente(id_cliente),
foreign key (id_funcionario) references tb_funcionario(id_funcionario),
foreign key (id_carrinho) references tb_carrinho(id_carrinho)
);

create table tb_pagamento (
id_pagamento int primary key auto_increment not null,
id_venda int not null,
valor_pagamento decimal(7,2) not null,
forma_pagamento enum('cartão','dinheiro físico','pix','vr','va') not null,
foreign key (id_venda) references tb_venda(id_venda)
);

create table tb_nota_fiscal (
id_nota int primary key auto_increment not null,
id_venda int not null,
numero_nota varchar(50) not null,
data_emissao date not null,
valor_nota decimal(7,2) not null,
foreign key (id_venda) references tb_venda(id_venda)
);