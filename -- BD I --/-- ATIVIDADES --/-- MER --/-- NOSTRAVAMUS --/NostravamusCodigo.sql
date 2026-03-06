create database db_nostravamus;

use db_nostravamus;

create table tb_funcionario (
cd_funcionario int primary key auto_increment, 
nm_funcionario varchar(45) not null
);


create table tb_reserva (
cd_reserva int primary key auto_increment, 
nm_cliente varchar(45) not null, 
nr_telefone varchar(15) not null, 
dt_reserva date not null, 
hr_reserva time not null, 
qt_pessoa varchar(45) not null, 
dt_registro_reserva datetime not null default current_timestamp, 
id_funcionario int,

foreign key (id_funcionario) references tb_funcionario(cd_funcionario)
);


create table tb_mesa (
cd_mesa int primary key auto_increment
);


create table tb_comanda (
cd_comanda int primary key auto_increment
);


create table tb_categoria (
cd_categoria int primary key auto_increment, 
nm_categoria varchar(45) not null
); 


create table tb_produto (
cd_produto int primary key auto_increment, 
nm_produto varchar(45) not null, 
vl_peoduto decimal(6,2) not null, 
ds_produto text, 
id_categoria int not null,

foreign key (id_categoria) references tb_categoria (cd_categoria)
);


create table tb_pedidos (
cd_pedido int primary key auto_increment, 
qt_produto int not null, 
vl_produto decimal(6,2) not null, 
id_produto int not null, 
id_funcionario int not null,
id_comanda int not null, 
dt_registro_pedido datetime not null default current_timestamp, 
st_pedido char(1) not null, 
id_mesa int,

foreign key (id_produto) references tb_produto (cd_produto), 
foreign key (id_funcionario) references tb_funcionario (cd_funcionario), 
foreign key (id_comanda) references tb_comanda (cd_comanda), 
foreign key (id_mesa) references tb_mesa (cd_mesa)
);
