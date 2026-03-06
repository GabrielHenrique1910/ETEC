use db_pigment;

-- Estabelecimentos cadastrados na cidade do usuário
	SELECT * FROM TB_RESTAURANTE 
    WHERE Endereco 
    LIKE '%[CIDADE]%';

-- Cartão do estabelecimento
	SELECT * FROM TB_RESTAURANTE 
    WHERE CD_Restaurante = [ID_RESTAURANTE];

-- Histórico de compras do cliente nos últimos 15 dias
	SELECT * FROM TB_PEDIDO 
    WHERE ID_Cliente = [ID_CLIENTE] AND Data_Hora >= NOW() - INTERVAL 15 DAY;

-- Histórico de compras do cliente nos últimos 30 dias
	SELECT * FROM TB_PEDIDO 
    WHERE ID_Cliente = [ID_CLIENTE] AND Data_Hora >= NOW() - INTERVAL 30 DAY;

-- Lista de estabelecimentos favoritos do cliente (considerando que você tem uma tabela para favoritos)
	SELECT * FROM TB_RESTAURANTE 
    WHERE CD_Restaurante IN (SELECT ID_Restaurante FROM TB_FAVORITOS WHERE ID_Cliente = [ID_CLIENTE]);