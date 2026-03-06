create database db_consultorio;
use db_consultorio;

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
('Dr. João Silva', 'Cardiologia', 'joao@email.com', '11987654321', '12345678901', 'masc'),
('Dra. Ana Souza', 'Pediatria', 'ana@email.com', '11987654322', '12345678902', 'fem'),
('Dr. Pedro Santos', 'Ortopedia', 'pedro@email.com', '11987654323', '12345678903', 'masc'),
('Dra. Maria Oliveira', 'Dermatologia', 'maria@email.com', '11987654324', '12345678904', 'fem'),
('Dr. Lucas Ferreira', 'Neurologia', 'lucas@email.com', '11987654325', '12345678905', 'masc');

insert into tb_convenio (tipo_convenio) values
('Unimed'),
('Bradesco Saúde'),
('SulAmérica'),
('Amil'),
('Particular');

insert into tb_pacientes (nome_paciente, telefone_paciente, data_nascimento, sexo_paciente, sintomas_paciente, endereco_paciente, cpf_cliente, naturalidade_paciente, tb_convenio_id_convenio) values
('Carlos Almeida', '11998765431', '1985-06-15', 'masc', 'Dor no peito', 'Rua A, 123', '23456789012', 'São Paulo', 1),
('Fernanda Costa', '11998765432', '1990-09-20', 'fem', 'Febre alta', 'Rua B, 456', '23456789013', 'Rio de Janeiro', 2),
('Ricardo Lima', '11998765433', '1975-12-10', 'masc', 'Dor de cabeça', 'Rua C, 789', '23456789014', 'Belo Horizonte', 3),
('Juliana Rocha', '11998765434', '2000-03-25', 'fem', 'Tosse persistente', 'Rua D, 101', '23456789015', 'Curitiba', 4),
('Gabriel Mendes', '11998765435', '1995-08-05', 'masc', 'Falta de ar', 'Rua E, 202', '23456789016', 'Porto Alegre', 5);

insert into tb_atendente (nome_atendente, cpf_atendente, endereco_atendente, telefone_atendente, email_atendente) values
('Mariana Souza', '34567890123', 'Rua X, 555', '11999988881', 'mariana@email.com'),
('Lucas Almeida', '34567890124', 'Rua Y, 777', '11999988882', 'lucas@email.com'),
('Bruna Carvalho', '34567890125', 'Rua Z, 999', '11999988883', 'bruna@email.com'),
('Fernando Lima', '34567890126', 'Rua W, 111', '11999988884', 'fernando@email.com'),
('Amanda Martins', '34567890127', 'Rua V, 333', '11999988885', 'amanda@email.com');

insert into tb_consultas (tb_medico_id_medico, tb_pacientes_id_paciente, data_consulta, hora_consulta, atestado, valor_consulta) values
(1, 1, '2025-03-10', '10:00:00', 'Descanso de 3 dias', '200.00'),
(2, 2, '2025-03-11', '11:30:00', 'Uso de antibióticos', '250.00'),
(3, 3, '2025-03-12', '09:15:00', 'Exames adicionais recomendados', '180.00'),
(4, 4, '2025-03-13', '14:45:00', 'Evitar exposição ao sol', '220.00'),
(5, 5, '2025-03-14', '16:00:00', 'Reposo por 7 dias', '300.00');

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
