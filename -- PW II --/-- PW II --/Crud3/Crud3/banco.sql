CREATE DATABASE loja3;
USE loja3;

CREATE TABLE roupas (
    idprod INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    calca DECIMAL(10,2),
    shorts DECIMAL(10,2),
    camisa DECIMAL(10,2),
    camiseta DECIMAL(10,2),
    tenis DECIMAL(10,2),
    pagamento VARCHAR(50)
) Engine = InnoDB;