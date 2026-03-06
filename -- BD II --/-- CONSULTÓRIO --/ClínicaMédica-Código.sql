create database db_ClinicaMedica;
use db_ClinicaMedica;

create table tb_medico (
crm_medico int primary key auto_increment,
nome_medico varchar(90),
area_medico varchar(45),
email_medico varchar(100) unique,
telefone_medico varchar(14) unique,
cpf_medico varchar(12) unique,
sexo_medico enum('masc', 'fem')
);

create table tb_convenio (
id_convenio int primary key auto_increment,
tipo_convenio varchar(45) unique
);

create table tb_pacientes (
id_paciente int primary key auto_increment,
nome_paciente varchar(90),
telefone_paciente varchar(14) unique,
data_nascimento date,
sexo_paciente enum('masc', 'fem'),
sintomas_paciente text,
endereco_paciente text,
cpf_cliente varchar(12) unique,
naturalidade_paciente varchar(20),
tb_convenio_id_convenio int,
foreign key (tb_convenio_id_convenio) references tb_convenio(id_convenio)
);

create table tb_consultas (
id_consulta int primary key auto_increment,
tb_medico_id_medico int,
tb_pacientes_id_paciente int,
data_consulta date,
hora_consulta time,
atestado text,
valor_consulta varchar(45),
foreign key (tb_medico_id_medico) references tb_medico(crm_medico),
foreign key (tb_pacientes_id_paciente) references tb_pacientes(id_paciente)
);

create table tb_atendente (
id_atendente int primary key auto_increment,
nome_atendente varchar(90),
cpf_atendente varchar(12) unique,
endereco_atendente text,
telefone_atendente varchar(14) unique,
email_atendente varchar(100) unique
);

create table tb_agendamento (
id_agendamento int primary key auto_increment,
tb_pacientes_id_paciente int,
tb_atendente_id_atendente int,
data_agendamento date,
hora_agendamento time,
foreign key (tb_pacientes_id_paciente) references tb_pacientes(id_paciente),
foreign key (tb_atendente_id_atendente) references tb_atendente(id_atendente)
);

-- INSERTS --
insert into tb_medico (nome_medico, area_medico, email_medico, telefone_medico, cpf_medico, sexo_medico) values
('Dr. André Carrillo', 'Ortopedia', 'andre@email.com', '12987654321', '12345678901', 'masc'),
('Dr. Yuri Alberto', 'Pediatra', 'yuri@email.com', '12987654322', '12345678902', 'masc'),
('Dr. Memphis Depay', 'Neurologia', 'memphis@email.com', '12987654323', '12345678903', 'masc'),
('Dr. Rodrigo Garro', 'Psiquiatria', 'rodrigo@email.com', '12987654324', '12345678904', 'masc'),
('Dr. Fabrizio Angileri', 'Neurologia', 'fabrizio@email.com', '12987654325', '12345678905', 'masc');

insert into tb_convenio (tipo_convenio) values
('Unimed'),
('Bradesco Saúde'),
('SulAmérica'),
('Amil'),
('Particular');

insert into tb_pacientes (nome_paciente, telefone_paciente, data_nascimento, sexo_paciente, sintomas_paciente, endereco_paciente, cpf_cliente, naturalidade_paciente, tb_convenio_id_convenio) values
('Hugo Souza', '12998765431', '1999-01-31', 'masc', 'Dedo quebrado', 'Rua A, 123', '23456789012', 'Brasil, RJ', 1),
('Matheus Bidu', '12998765432', '1999-05-04', 'masc', 'Joelho inchado', 'Rua B, 456', '23456789013', 'Brasil, SP', 2),
('Breno Bidon', '12998765433', '2005-02-20', 'masc', 'Tornozelo doendo', 'Rua C, 789', '23456789014', 'Brasil, SP', 3),
('Ángel Romero', '12998765434', '1992-05-04', 'masc', 'LCA rompido', 'Rua D, 101', '23456789015', 'Paraguai, FDLM', 4),
('Félix Torres', '12998765435', '1997-01-11', 'masc', 'supercílio cortado', 'Rua E, 202', '23456789016', 'Equador, SL', 5);

insert into tb_atendente (nome_atendente, cpf_atendente, endereco_atendente, telefone_atendente, email_atendente) values
('Diego Palácios', '34567890123', 'Rua X, 555', '12999988881', 'diego@email.com'),
('André Ramalho', '34567890124', 'Rua Y, 777', '12999988882', 'andrer@email.com'),
('Thales Magno', '34567890125', 'Rua Z, 999', '12999988883', 'thales@email.com'),
('Héctor Henrnándes', '34567890126', 'Rua W, 111', '12999988884', 'hector@email.com'),
('Maycon', '34567890127', 'Rua V, 333', '12	999988885', 'maycon@email.com');

insert into tb_consultas (tb_medico_id_medico, tb_pacientes_id_paciente, data_consulta, hora_consulta, atestado, valor_consulta) values
(1, 1, '2025-03-10', '10:00:00', 'descanso de 1 mes', '200.00'),
(2, 2, '2025-03-11', '11:30:00', 'descanso de 7 dias', '250.00'),
(3, 3, '2025-03-12', '09:15:00', 'descanso de 3 dias', '180.00'),
(4, 4, '2025-03-13', '14:45:00', 'descanso de 4 meses', '220.00'),
(5, 5, '2025-03-14', '16:00:00', 'descanso de 1 dia', '300.00');

insert into tb_agendamento (tb_pacientes_id_paciente, tb_atendente_id_atendente, data_agendamento, hora_agendamento) values
(1, 1, '2025-03-05', '09:00:00'),
(2, 2, '2025-03-06', '10:30:00'),
(3, 3, '2025-03-07', '11:45:00'),
(4, 4, '2025-03-08', '15:15:00'),
(5, 5, '2025-03-09', '16:30:00');

-- SELECTS --
select 
nome_medico as "Nome", 
area_medico as "Especialidade" 
from tb_medico;

select 
nome_paciente as "Nome", 
data_nascimento as "Data de nascimento"  
from tb_pacientes;

-- UPDATE --
update tb_pacientes  
set telefone_paciente = '11987654399'  
where id_paciente = 1;