create database Biblioteca;
use Biblioteca;

-- 1. Criação de Tabelas
create table Livro (
	id_livro int primary key auto_increment,
    titulo_livro varchar(100) not null,
    autor_livro varchar(100) not null,
    ano_publicacao int not null
);

create table Usuario (
	id_usuario int primary key auto_increment,
    nome_usuario varchar(100) not null,
    email_usuario varchar(100) not null unique
);

create table Emprestimo (
	id_emprestimo int primary key auto_increment,
    id_livro int not null,
    id_usuario int not null,
    data_emprestimo date not null,
    data_devolucao date not null,
    
    foreign key (id_livro) references Livro(id_livro),
	foreign key (id_usuario) references Usuario(id_usuario)
);

create table Generos (
	id_genero int primary key auto_increment,
    nome_genero varchar(50) not null
);

create table Livro_genero (
    id_livro int not null,
    id_genero int not null,
    foreign key (id_livro) references Livro(id_livro),
    foreign key (id_genero) references Generos(id_genero)
);

-- 2. Inserção de Dados 
insert into Livro (titulo_livro, autor_livro, ano_publicacao) values
('o senhor dos anéis', 'j.r.r. tolkien', 1954),
('dom quixote', 'miguel de cervantes', 1605),
('1984', 'george orwell', 1949),
('harry potter e a pedra filosofal', 'j.k. rowling', 1997),
('o hobbit', 'j.r.r. tolkien', 1937);

insert into Usuario (nome_usuario, email_usuario) values
('joão silva', 'joao.silva@gmail.com'),
('maria oliveira', 'maria.oliveira@gmail.com'),
('carlos souza', 'carlos.souza@gmail.com'),
('ana costa', 'ana.costa@gmail.com'),
('lucas pereira', 'lucas.pereira@gmail.com');

insert into Emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao) values
(1, 1, '2025-05-01', '2025-05-15'),
(2, 2, '2025-05-02', '2025-05-16'),
(3, 3, '2025-05-03', '2025-05-17'),
(4, 4, '2025-05-04', '2025-05-18'),
(5, 5, '2025-05-05', '2025-05-19');

insert into Generos (nome_genero) values
('fantasia'),
('romance'),
('distopia'),
('aventura'),
('mistério');

insert into Livro_genero (id_livro, id_genero) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 1);

select * from Livro;

select * from Livro
where ano_publicação > 2000;