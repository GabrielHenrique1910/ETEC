create database db_nostravamus;

use db_nostravamus;

create table tb_funcionario (
cd_funcionaro int primary key auto_increment, 
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
id_funcionario int  not null, <--- ERRADO ---

foreign key (id_funcionario) references tb_funcionario (cd_funcionario)
);

create table tb_mesa (
cd_mesa int primary key auto_increment
);

create table tb_comanda (
cd_comanda int primary key auto_increment
);