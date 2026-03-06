create database MinhaLoja;
use minhaLoja;

create table produtos(
 idprod int(4) not null primary key auto_increment,
 nome char(40) not null,
 imagem char(80) not null) Engine = InnoDB;
 
 
 insert into produtos (nome, imagem) values ("produto 1","produto1.jpg");
 insert into produtos (nome, imagem) values ("produto 2","produto2.jpg");
 insert into produtos (nome, imagem) values ("produto 3","produto3.jpg");
 
 select * from produtos;