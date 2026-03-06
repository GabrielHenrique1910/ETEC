create database db_funcionario_veiculo;

use db_funcionario_veiculo;

create table tb_funcionario (
cd_funcionario int primary key auto_increment,
nm_funcionario varchar(45) not null, 
nm_email varchar(45) not null,
cd_senha varchar(80) not null 
);

alter table tb_funcinario add
constraint email_unico unique(nm_email);

create table tb_veiculo (
cd_funcionario int primary key auto_increment,
cd_placa varchar(10) not null,
dt_entrada datetime not null default current_timestamp,
id_funcionario_entrada int not null,
dt_saida datetime default current_timestamp, 
id_funcionario_saida int, 

foreign key (id_funcionario_entrada) references tb_funcionario (cd_funcionario), 
foreign key (id_funcionario_saida) references tb_funcionario (cd_funcionario)
);