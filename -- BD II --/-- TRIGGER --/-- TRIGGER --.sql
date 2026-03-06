create database ex_trigger;
use ex_trigger;

create table ex2_cliente(
cd_cliente int primary key,
nm_cliente varchar(255),
dt_nascimento date,
cpf varchar(11)
);

create table ex2_pedido(
cd_pedido int primary key,
cd_cliente int, 
dt_pedido date,
nf int,
valor_total decimal(10,2),
foreign key (cd_cliente) references ex2_cliente(cd_cliente)
);

create table ex2_produto(
cd_produto int primary key,
descricao varchar(255),
qtd int
);

create table ex2_item_pedido(
item_pedido int primary key,
cd_pedido int, 
num_item int,
valor_unitario decimal(10,2),
qtd int,
cd_produto int, 
foreign key (cd_pedido) references ex2_pedido(cd_pedido),
foreign key (cd_produto) references ex2_produto(cd_produto)
);

create table ex2_log(
cd_log int primary key,
datai datetime,
descricao varchar(255)
);

insert into ex2_cliente (cd_cliente, nm_cliente, dt_nascimento, cpf)
values
(1, 'Maria da Silva', '1990-01-01', '12345678901'),
(2, 'Mario Sergio', '1985-05-15', '98765432101');

insert into ex2_produto (cd_produto, descricao, qtd)
values
(1, 'Coca-Cola', 100),
(2, 'Fanta Laranja', 75);

insert into ex2_pedido (cd_pedido, cd_cliente, dt_pedido, nf, valor_total)
values
(1, 1, '2025-09-01', 1001, 800.00),
(2, 1, '2025-09-22', 1002, 1200);

insert into ex2_item_pedido (item_pedido, cd_pedido, num_item, valor_unitario, qtd, cd_produto)
values
(1, 1, 1, 20.00, 2, 1),
(2, 2, 2, 15.00, 4, 2);

insert into ex2_log (cd_log, datai, descricao)
values
(1, '2025-08-08', 'Produto Faturado'),
(2, '2025-09-01', 'Peoduto saiu para entrega');

-- Trigger para baixar estoque após a venda
delimiter $
create trigger baixar_estoque_produto
after insert on ex2_item_pedido
for each row
begin
	update ex2_produto
    set qtd = qtd - new.qtd
    where cd_produto = new.cd_produto;
end $
delimiter ;

-- Trigger para criar log de clientes modificados 
delimiter $
create trigger log_cliente_modificados
after update on  ex2_cliente 
for each row
begin 	
	insert into ex2_log (datai, descricao)
    values (now(), concat('cliente', old,cd_cliente, 'foi modificado'));
end $
delimiter ;

-- Trigger para criar log de pedidos com valor total maior que R$1000
delimiter $
create trigger log_pedidos_valor_alto
after insert on ex2_pedido
for each row
begin 
	if new.valor_total > 1000.00 then 
		insert into ex2_log(datai, descricao)
        values (now(), concat('pedido', new.cd_pedido, 'tem valor maior que R$1000.00'));
	end if;
end $ 
delimiter ;