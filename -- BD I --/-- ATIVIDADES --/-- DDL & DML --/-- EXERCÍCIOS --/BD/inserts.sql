use bd_pigment;

insert into tb_cliente (cd_cliente, nome, sobrenome, email, senha, telefone, endereco, data_nascimento, cpf) values
(1, 'João', 'Silva', 'joao.silva@example.com', 'senha123', '11987654321', 'Rua das Flores, 123, Apto 101, Centro, São Paulo, SP, 01234-000', '1990-01-01', '123.456.789-00'),
(2, 'Maria', 'Oliveira', 'maria.oliveira@example.com', 'senha123', '11999887766', 'Avenida Brasil, 456, Casa 2, Vila Nova, Rio de Janeiro, RJ, 02345-678', '1992-02-02', '234.567.890-01'),
(3, 'Carlos', 'Pereira', 'carlos.pereira@example.com', 'senha123', '21987654321', 'Rua dos Limoeiros, 789, Bloco B, Apto 204, Belo Horizonte, MG, 03456-789', '1985-03-03', '345.678.901-02'),
(4, 'Ana', 'Souza', 'ana.souza@example.com', 'senha123', '31999887766', 'Travessa do Sol, 159, Apto 303, Curitiba, PR, 04567-890', '1988-04-04', '456.789.012-03'),
(5, 'Lucas', 'Lima', 'lucas.lima@example.com', 'senha123', '41987654321', 'Rua da Esperança, 753, Casa 4, Porto Alegre, RS, 05678-901', '1995-05-05', '567.890.123-04');

insert into tb_restaurante (cd_Restaurante, nome, endereco, telefone, tipo_cozinha, cnpj, horario_funcionamento, avaliacao) values
(1, 'Cantinho Italiano', 'Rua da Macarronada, 101, Centro, São Paulo, SP, 01234-000', '1134567890', 'Italiana', '12.345.678/0001-90', '11:00 - 23:00', 4.5),
(2, 'Sushi da Esquina', 'Avenida do Japão, 202, Vila Nova, Rio de Janeiro, RJ, 02345-678', '2198765432', 'Japonesa', '34.567.890/0001-01', '12:00 - 22:00', 4.8),
(3, 'Burguer & Cia', 'Rua do Hambúrguer, 303, Bairro Novo, Belo Horizonte, MG, 03456-789', '3198765432', 'Americana', '45.678.901/0001-12', '10:00 - 00:00', 4.2),
(4, 'Doces da Ana', 'Rua das Guloseimas, 404, Centro, Curitiba, PR, 04567-890', '4198765432', 'Sobremesas', '09:00 - 21:00', 4.9),
(5, 'Pizzas da Casa', 'Avenida das Pizzas, 505, Bairro Feliz, Porto Alegre, RS, 05678-901', '5134567890', 'Italiana', '56.789.012/0001-23', '17:00 - 01:00', 4.6);

insert into tb_categoria (cd_categoria, nome) values
(1, 'Bebida'),
(2, 'Sobremesa'),
(3, 'Prato Principal'),
(4, 'Aperitivo'),
(5, 'Salada');

insert into tb_produtos (cd_produto, nome, descricao, preco, foto, id_restaurante, categoria) values
(1, 'Espaguete à Carbonara', 'Delicioso espaguete com molho à base de ovos e queijo.', 29.90, 'link_para_foto_espaguete', 1, 3),
(2, 'Sushi Variado', 'Um mix de sushis fresquinhos e saborosos.', 45.00, 'link_para_foto_sushi', 2, 3),
(3, 'Cheeseburger Clássico', 'Hambúrguer suculento com queijo e ingredientes frescos.', 25.00, 'link_para_foto_cheeseburger', 3, 3),
(4, 'Torta de Limão', 'Torta leve e refrescante, perfeita para sobremesa.', 12.50, 'link_para_foto_torta', 4, 2),
(5, 'Cerveja Artesanal', 'Cerveja feita de forma artesanal, com sabor único.', 15.00, 'link_para_foto_cerveja', 1, 1);

insert into tb_pedido (cd_pedido, data_hora, id_cliente, id_restaurante, stts, valor_total) values
(1, '2024-10-01 12:30:00', 1, 1, 'Entregue', 59.80),
(2, '2024-10-02 19:45:00', 2, 2, 'Em preparação', 45.00),
(3, '2024-10-03 13:15:00', 3, 3, 'A caminho', 25.00),
(4, '2024-10-04 17:00:00', 4, 4, 'Entregue', 12.50),
(5, '2024-10-05 20:30:00', 5, 5, 'Entregue', 15.00);

insert into tb_item_pedido (id_item, quantidade, preco, id_pedido, id_produto) values
(1, 2, 59.80, 1, 1), 
(2, 1, 45.00, 2, 2),  
(3, 1, 25.00, 3, 3),  
(4, 1, 12.50, 4, 4), 
(5, 1, 15.00, 5, 5);  

insert into tb_entrega (cd_entrega, data_hora, id_pedido, id_entregador, status_entrega) values
(1, '2024-10-01 13:00:00', 1, 1, 'Entregue'),
(2, '2024-10-02 20:00:00', 2, 2, 'Em trânsito'),
(3, '2024-10-03 14:00:00', 3, 3, 'Entregue'),
(4, '2024-10-04 18:00:00', 4, 4, 'Entregue'),
(5, '2024-10-05 21:00:00', 5, 5, 'Entregue');

insert into tb_entregador (cd_entregador, nome, telefone, veiculo, placa) values
(1, 'Carlos Mendes', '11998765432', 'Moto', 'XYZ-1234'),
(2, 'Fernanda Lima', '21987654321', 'Bicicleta', 'ABC-5678'),
(3, 'Ricardo Santos', '31987654321', 'Carro', 'DEF-9101'),
(4, 'Mariana Costa', '41987654321', 'Moto', 'GHI-2345'),
(5, 'Lucas Ferreira', '51987654321', 'Bicicleta', 'JKL-6789');

insert into tb_pagamentos (cd_pagamento, id_pedido, forma_pagamento, status_pagamento) values
(1, 1, 'Cartão de Crédito', 'Pago'),
(2, 2, 'Dinheiro', 'Pendente'),
(3, 3, 'Cartão de Débito', 'Pago'),
(4, 4, 'Pix', 'Pago'),
(5, 5, 'Cartão de Crédito', 'Cancelado');
