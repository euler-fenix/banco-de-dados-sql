CREATE DATABASE LojaDB;
USE LojaDB;

CREATE TABLE Produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL
);

CREATE TABLE ItensVenda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

INSERT INTO Produtos (nome, preco, estoque)
VALUES ('Monitor X', 620.00, 50),
       ('Teclado Mecânico', 450.00, 30),
       ('Mouse', 50.00, 0);

INSERT INTO Vendas (data_venda, total)
VALUES ('2026-03-10', 1070.00);

INSERT INTO ItensVenda (venda_id, produto_id, quantidade, preco_unitario)
VALUES (1, 1, 1, 620.00),
       (1, 2, 1, 450.00);
