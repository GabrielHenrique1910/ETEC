-- COMANDOS DDL (CREATE / ALTER / DROP)
-- DATA DEFINITION LANGUAGE

-- para criar uma base de dados

create database db_consultorio_mtec;

use db_consultorio_mtec;

create table tb_medico (
cd_medico int primary key auto_increment,
nm_medico varchar(60) not null,
nm_email varchar(60) not null, 
dt_nascimento date not null,
dt_registro_medico datetime not null
default current_timestamp,

constraint email_unico unique(nm_email)
);

create table tb_paciente (
cd_paciente int primary key auto_increment,
nm_paciente varchar(60) not null, 
nm_email varchar(60) not null, 
dt_registro_paciente datetime not null 
default current_timestamp
);

alter table tb_paciente add
constraint  email_unico_paciente unique(nm_email);