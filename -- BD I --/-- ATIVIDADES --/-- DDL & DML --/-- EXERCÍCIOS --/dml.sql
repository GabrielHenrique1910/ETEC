-- DML - DATA MANIPULATION LANGUAGE
-- INSERT / UPDATE / DELETE

 -- INSERÇÃO DE DADOS (ORMA IMPLÍCITA)
 
 select * from tb_medico;
 
 insert into tb_medico values
 (null, "Gabriel Henrique", "gabrielcorinthiano1802@gmailcom", "2009-02-18", now());
 
 
 -- INSERÇÃO DE DADOS (FORMAS EXPLÍCITAS)
 
 insert into tb_medico
(cd_medico, nm_medico, nm_email, dt_nascimento, dt_registro_medico)
values
(null, "Gabriela Gallo", "gallo@mail.com", "1910-10-14", now());


insert into tb_medico
(nm_medico,nm_email, dt_nascimento)
values
("Gabriel Garcia", "garcia@mail.com", "1990-04-02");

insert into tb_medico set
nm_medico = "Luara Porto", 
nm_email = "porto@mail.com",
dt_nascimento = "1991-09-04";

-- ALTERACÃO DE DADOS EM UMA TABLE

update tb_medico set
nm_medico = "Gabriela Gallo Pêra"
where
cd_medico = 2;

select * from tb_medico;

-- EXCLUIR DADOS DE UMA TABLE

delete from tb_medico
where
cd_medico = 3;

