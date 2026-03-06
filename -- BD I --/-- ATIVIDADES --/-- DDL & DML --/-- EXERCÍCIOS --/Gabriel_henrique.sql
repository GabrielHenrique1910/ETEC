create database db_estacionamento;

use db_estacionamento;

create table tb_funcionario (
cd_funcionario int primary key auto_increment,
nm_funcionario varchar(45) not null,
nm_email varchar(45) not null,
cd_senha varchar(80) not null,

constraint email_unico unique(nm_email) 
);

create table tb_veiculo (
cd_veiculo int primary key auto_increment,
cd_placa varchar(10) not null,
dt_entrada datetime not null default current_timestamp,
id_funcionario_entrada int not null,
dt_saida datetime,
id_funcionario_saida int,
foreign key (id_funcionario_entrada) references tb_funcionario (cd_funcionario),
foreign key (id_funcionario_saida) references tb_funcionario (cd_funcionario)
);

insert into tb_funcionario values
 (null, "Gabriel Henrique", "gabrielhenrique@mail.com", "123gabriel789");
 
 insert into tb_funcionario values
 (null, "César Fernando", "cesarfernando@mail.com", "123cesar789");
 
 insert into tb_funcionario values
 (null, "José Eduardo", "joseeduardo@mail.com", "123jose789");
 
 select * from tb_funcionario;
 
create table tb_tipo_veiculo (
cd_tipo_veiculo int primary key not null auto_increment,
nm_tipo_veiculo varchar(20) not null
);

insert into tb_tipo_veiculo values
 (null, "moto");
 
insert into tb_tipo_veiculo values
 (null, "carro");
 
insert into tb_tipo_veiculo values
 (null, "van");
 
insert into tb_tipo_veiculo values
 (null, "suv");
 
insert into tb_tipo_veiculo values
 (null, "pick-up");
 
 alter table tb_veiculo add column
 id_tipo_veiculo int not null;
 
 alter table tb_veiculo add
 foreign key (id_tipo_veiculo) references tb_tipo_veiculo(cd_tipo_veiculo);
 
 insert into tb_veiculo set
 cd_placa = "EME2A51";
 
 insert into tb_veiculo set
 cd_placa = "EWEFT24";
 
 insert into tb_veiculo set
 cd_placa = "DED24HF";
 
 insert into tb_veiculo set
 cd_placa = "G2GTTF2";
 
 insert into tb_veiculo set
 cd_placa = "WDHUI34";
 
 insert into tb_veiculo set
 cd_placa = "DG2GV3C";
 
 insert into tb_veiculo set
 cd_placa = "DREFYG2";
 
 insert into tb_veiculo set
 cd_placa = "EHUUEH3";
 
 insert into tb_veiculo set
 cd_placa = "EDF2C3C";
 
 insert into tb_veiculo set
 cd_placa = "DG2G223";
 
 update tb_veiculo set 
 id_tipo_veiculo = "van"
 where
 cd_placa = "EME2A51"
 
 update tb_veiculo set 
 id_tipo_veiculo = "van"
 where
 cd_placa = "EWEFT24"
 
 update tb_veiculo set 
 id_tipo_veiculo = "moto"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "moto"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "carro"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "carro"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "pick-up"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "pick-up"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "suv"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 id_tipo_veiculo = "suv"
 where
 cd_placa = "EDED24HF"
 
 update tb_veiculo set 
 dt_saida = "2024-06-17 16:34:01"
 where 
 cd_placa = "DG2G223"
 
  update tb_veiculo set 
 dt_saida = "2024-06-17 16:34:01"
 where 
 cd_placa = "EDF2C3C"
 
  update tb_veiculo set 
 dt_saida = "2024-06-18 16:34:04"
 where 
 cd_placa = "EHUUEH3"
 
 