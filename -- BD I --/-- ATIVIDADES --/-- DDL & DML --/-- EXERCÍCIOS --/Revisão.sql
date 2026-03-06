create database db_curso_etec;

use db_curso_etec;

create table tb_escola (
cd_escola int auto_increment primary key,
nm_escola varchar(100) not null,
telefone_escola varchar(45) not null unique,
endereco_escola varchar(100) not null
);

create table tb_eixo_tecnologico (
cd_eixo_tecnologico int auto_increment primary key,
nm_eixo_tecnologico varchar(55) not null unique
);

create table tb_periodo (
cd_periodo int auto_increment primary key,
nm_periodo varchar(40) not null unique
);

create table tb_curso (
cd_curso int auto_increment primary key,
nm_curso varchar(80) not null,
ds_curso longtext not null, 
id_periodo int not null, 
id_eixo_tecnologico int not null,
id_escola int not null,
qt_duracao_curso varchar(20) not null,
st_curso char(1) not null default "T",
dt_registro_curso datetime not null default current_timestamp,
url_imagem_curso varchar(80) not null
);

alter table tb_curso add
foreign key (id_periodo) 
references tb_periodo(cd_periodo);

alter table tb_curso add
foreign key (id_eixo_tecnologico) 
references tb_eixo_tecnologico(cd_eixo_tecnologico);

alter table tb_curso add
foreign key (id_escola) 
references tb_escola(cd_escola);

create table tb_plano_curso (
cd_plano_curso int auto_increment primary key,
nm_plano_de_curso varchar(80) not null,
id_curso int not null,

foreign key (id_curso) references tb_curso(cd_curso)
);

insert into tb_escola set
nm_escola = "Escola Profª Ilza Nascimnto Pintus",
endereco_escola = "AV. Salmão, 570 - Parque Res. Aquárius - SJCampos";

insert into tb_escola set
nm_escola = "EXT. E.E. Alceu Maynard Araújo",
endereco_escola = "Rua Miosótis, 75";

select * from tb_escola;

insert into tb_eixo_tecnologico set
nm_eixo_tecologico = "Informação e comunicacão";

insert into tb_eixo_tecnologico set
nm_eixo_tecologico = "Gestão e negócios";

insert into tb_eixo_tecnologico set
nm_eixo_tecologico = "Controle e processos industriais";

insert into tb_periodo set
nm_periodo = "Integral";

insert into tb_periodo set
nm_periodo = "manhã";

insert into tb_periodo set
nm_periodo = "tarde";


insert into tb_periodo set
nm_periodo = "noturno";