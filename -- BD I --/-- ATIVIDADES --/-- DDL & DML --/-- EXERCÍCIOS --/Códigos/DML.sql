use db_ifood;

-- Inserts para tb_categoria
insert into categoria set
nome_categoria = "Pizza";

insert into categoria set
nome_categoria = "Bebidas";

insert into categoria set
nome_categoria = "Sushi";

insert into categoria set
nome_categoria = "Massas";

insert into categoria set
nome_categoria = "Sobremesas";

select * from categoria;





-- Inserts para tb_cidade
insert into cidade set
nm_cidade = "São Paulo", 
cep_cidade = 12345678;

insert into cidade set
nm_cidade = "Rio de Janeiro", 
cep_cidade = 23456789;

insert into cidade set
nm_cidade = "Belo Horizonte", 
cep_cidade = 34567890;

insert into cidade set
nm_cidade = "Curitiba", 
cep_cidade = 45678901;

insert into cidade set
nm_cidade = "Porto Alegre", 
cep_cidade = 56789012;
 
select * from cidade;
 
 
 
 
 
-- Inserts para tb_restaurante
insert into restaurante set
nome = "Pizzaria Central", 
endereco = "Rua A, 123", 
telefone = "11987654321", 
tipo_cozinha = "Pizza", 
cnpj = "12345678000100", 
horario_entrada = "10:00:00", 
horario_saida = "23:00:00", 
avaliacao = 4.5, 
id_cidade = 1;

insert into restaurante set
nome = "Sushi House", 
endereco = "Rua B, 456", 
telefone = "21987654321", 
tipo_cozinha = "Sushi", 
cnpj = "23456789000111", 
horario_entrada = "12:00:00", 
horario_saida = "22:00:00", 
avaliacao = 4.7, 
id_cidade = 2;

insert into restaurante set
nome = "Massas Gourmet", 
endereco = "Rua C, 789", 
telefone = "31987654321", 
tipo_cozinha = "Massas", 
cnpj = "34567890000122", 
horario_entrada = "11:00:00", 
horario_saida = "21:00:00", 
avaliacao = 4.6, 
id_cidade = 3;

insert into restaurante set
nome = "Doces e Sobremesas", 
endereco = "Rua D, 101", 
telefone = "41987654321", 
tipo_cozinha = "Sobremesas", 
cnpj = "45678901000133", 
horario_entrada = "09:00:00", 
horario_saida = "20:00:00", 
avaliacao = 4.8, 
id_cidade = 4;

insert into restaurante set
nome = "Bebidas e Drinks", 
endereco = "Rua E, 102", 
telefone = "51987654321", 
tipo_cozinha = "Bebidas", 
cnpj = "56789012000144", 
horario_entrada = "14:00:00", 
horario_saida = "00:00:00", 
avaliacao = 4.3, 
id_cidade = 5;

select * from restaurante;





-- Inserts para tb_produtos
insert into produtos set
nome = "Pizza Margherita", 
descricao = "Pizza com molho de tomate, queijo e manjericão", 
preco = 35.50, foto = "pizza1.jpg", 
id_restaurante = 1, 
categoria = 1;

insert into produtos set
nome = "Refrigerante 2L", 
descricao = "Refrigerante sabor cola", 
preco = 8.00, foto = "bebida1.jpg", 
id_restaurante = 5, 
categoria = 2;

insert into produtos set
nome = "Sushi Combo", 
descricao = "Combo de sushi com 20 peças", 
preco = 42.00, foto = "sushi1.jpg", 
id_restaurante = 2, 
categoria = 3;

insert into produtos set
nome = "Lasanha à Bolonhesa", 
descricao = "Lasanha com molho bolonhesa", 
preco = 29.90, foto = "massa1.jpg", 
id_restaurante = 3, 
categoria = 4;

insert into produtos set
nome = "Torta de Limão", 
descricao = "Torta de limão com merengue", 
preco = 12.50, foto = "sobremesa1.jpg", 
id_restaurante = 4, 
categoria = 5;

select * from produtos;





-- Inserts para tb_cliente
insert into cliente set
nome = "Carlos", 
sobrenome = "Silva", 
email = "carlos.silva@gmail.com", 
senha = "senha123", 
telefone = "11912345678", 
endereco = "Rua F, 200", 
data_nascimento = "1985-03-15", 
cpf = "12345678901";

insert into cliente set
nome = "Ana", 
sobrenome = "Souza", 
email = "ana.souza@gmail.com", 
senha = "senha123", 
telefone = "21912345678", 
endereco = "Rua G, 201", 
data_nascimento = "1990-05-20", 
cpf = "23456789012";

insert into cliente set
nome = "João", 
sobrenome = "Pereira", 
email = "joao.pereira@gmail.com", 
senha = "senha123", 
telefone = "31912345678", 
endereco = "Rua H, 202", 
data_nascimento = "1988-10-11", 
cpf = "34567890123";

insert into cliente set
nome = "Mariana", 
sobrenome = "Lima", 
email = "mariana.lima@gmail.com", 
senha = "senha123", 
telefone = "41912345678", 
endereco = "Rua I, 203", 
data_nascimento = "1995-07-07", 
cpf = "45678901234";

insert into cliente set
nome = "Felipe", 
sobrenome = "Oliveira", 
email = "felipe.oliveira@gmail.com", 
senha = "senha123", 
telefone = "51912345678", 
endereco = "Rua J, 204", 
data_nascimento = "1992-12-25", 
cpf = "56789012345";

select * from cliente;





-- Inserts para tb_pedido
insert into pedido set
hora_pedido = "12:30:00", 
id_cliente = 1, 
id_restaurante = 1, 
stts = "P", 
valor_total = 43.50;

insert into pedido set
hora_pedido = "13:45:00", 
id_cliente = 2, 
id_restaurante = 2, 
stts = "P", 
valor_total = 42.00;

insert into pedido set
hora_pedido = "14:15:00", 
id_cliente = 3, 
id_restaurante = 3, 
stts = "P", 
valor_total = 37.90;

insert into pedido set
hora_pedido = "15:00:00", 
id_cliente = 5, 
id_restaurante = 4, 
stts = "P", 
valor_total = 18.50;

insert into pedido set
hora_pedido = "16:10:00", 
id_cliente = 6, 
id_restaurante = 5, 
stts = "P", 
valor_total = 12.50;

select * from pedido;





-- Inserts para tb_entregador
insert into entregador set
nome = "Pedro", 
telefone = "11987654322", 
horario_saida = "10:00:00", 
veiculo = "Moto", 
placa = "ABC1234";

insert into entregador set
nome = "Lucas", 
telefone = "21987654322", 
horario_saida = "11:00:00", 
veiculo = "Carro", 
placa = "DEF5678";

insert into entregador set
nome = "Maria", 
telefone = "31987654322", 
horario_saida = "12:00:00", 
veiculo = "Moto", 
placa = "GHI9012";

insert into entregador set
nome = "Rafael", 
telefone = "41987654322", 
horario_saida = "13:00:00", 
veiculo = "Bicicleta", 
placa = "JKL3456";

insert into entregador set
nome = "Juliana", 
telefone = "51987654322", 
horario_saida = "14:00:00", 
veiculo = "Moto", 
placa = "MNO7890";

select * from entregador;





-- Inserts para tb_entrega
insert into entrega set
data_entrega = "13:00:00", 
id_pedido = 1, 
id_entregador = 1, 
status_entrega = "Entregue";

insert into entrega set
data_entrega = "14:00:00", 
id_pedido = 2, 
id_entregador = 2, 
status_entrega = "Entregue";

insert into entrega set
data_entrega = "14:45:00", 
id_pedido = 3, 
id_entregador = 3, 
status_entrega = "Entregue";

insert into entrega set
data_entrega = "15:30:00", 
id_pedido = 6, 
id_entregador = 4, 
status_entrega = "Entregue";

insert into entrega set
data_entrega = "16:45:00", 
id_pedido = 7, 
id_entregador = 5, 
status_entrega = "Entregue";

select * from entrega;





-- Inserts para tb_pagamentos
insert into pagamentos set
id_pedido = 1, 
forma_pagamento = "Cartão de Crédito", 
status_pagamento = "P";

insert into pagamentos set
id_pedido = 2, 
forma_pagamento = "Cartão de Débito", 
status_pagamento = "P";

insert into pagamentos set
id_pedido = 3, 
forma_pagamento = "Dinheiro", 
status_pagamento = "P";

insert into pagamentos set
id_pedido = 6, 
forma_pagamento = "Pix", 
status_pagamento = "P";

insert into pagamentos set
id_pedido = 7, 
forma_pagamento = "Cartão de Crédito", 
status_pagamento = "P";

select * from pagamentos;





-- Inserts para tb_pedido (produto do pedido)
insert into tb_pedido set
id_produto = 1, 
id_pedido = 1, 
quantidade = "2", 
preco = 35.50;

insert into tb_pedido set
id_produto = 2, 
id_pedido = 2, 
quantidade = "1", 
preco = 8.00;

insert into tb_pedido set
id_produto = 3, 
id_pedido = 3, 
quantidade = "1", 
preco = 42.00;

insert into tb_pedido set
id_produto = 4, 
id_pedido = 6, 
quantidade = "1", 
preco = 29.90;

insert into tb_pedido set
id_produto = 5, 
id_pedido = 7, 
quantidade = "1", 
preco = 12.50;

select * from tb_pedido;