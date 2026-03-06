
drop database banco;
create database banco;
use banco;

create table produtos(
 idprod int(4) not null primary key auto_increment,
 nome char(40) not null,
 imagem char(80) not null) Engine = InnoDB;
 
 
 
 insert into produtos (nome, imagem) values ("joão","j.jpg");
 insert into produtos (nome, imagem) values ("marri","m.jpg");
 insert into produtos (nome, imagem) values ("peter","p.jpg");
 
 select * from produtos;