CREATE DATABASE dados_projeto_1; 
USE dados_projeto_1; 
-- sempre criar o nome do banco usando database e depois use para ativar
/*======================================
comentario em bloco
==========================*/
CREATE TABLE usuarios(
	id int,
    nome VARCHAR(500) NOT NULL COMMENT 'Nome do usuario',
    email VARCHAR(100) NOT NULL UNIQUE comment 'email do usuario',
    endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do usuario',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento usuario');
    
	CREATE TABLE destinos(
	id int,
    nome VARCHAR(500) NOT NULL UNIQUE COMMENT 'Nome do destino', -- comentario
    descricao VARCHAR(100) NOT NULL COMMENT 'email do usuario');
    
CREATE TABLE reservas(
	id int COMMENT 'identificador unico',
    id_usuario INT COMMENT 'Referencia ao ID do usuario da reserva',
    id_destino INT COMMENT 'Referencia ID destino da reserva',
    data DATE COMMENT 'Data da reserva',
    status VARCHAR(200) DEFAULT 'pendente' COMMENT 'Status da reserva(confirmada, pendente, cancelada,etc)');

==========================================

USE dados_projeto_1;
INSERT INTO usuarios (id, nome,email, data_nascimento, endereco) VALUES (1, "Rodrigo da Costa", "rodri@gmail.com", "2000-10-10", "Rua Fonseca, 120 - Bairro Lordes/MG");
INSERT INTO usuarios (id, nome,email, data_nascimento, endereco) VALUES (2, "Romario", "roma@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");
INSERT INTO usuarios (id, nome,email, data_nascimento, endereco) VALUES (3, "Ricardo", "rom@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");
INSERT INTO usuarios (id, nome,email, data_nascimento, endereco) VALUES (3, "Ricardo", "teste@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");

-- Visualizar os dados

SELECT * FROM usuarios;
=================================
USE dados_projeto_1;
INSERT INTO reservas (id, id_usuario, id_destino, data, status) 
VALUES 
(1, 1, 1, '2026-07-01','pendente'),
(2, 2, 1, '2026-07-01','pendente'),
(3, 3, 2, '2026-07-01','pendente'),
(4, 4, 2, '2026-07-01','pendente');


SELECT * FROM reservas

==================================
USE dados_projeto_1;
INSERT INTO destinos (id, nome, descricao) 
VALUES 
(1, 'Foz do Iguaçu', 'Linha area'),
(2, 'Parque Aquatico', 'Linha onibus'),
(3, 'Rio de Janeiro', 'Linha area');

SELECT * FROM destinos

=======================================
UPDATE usuarios
SET id = 4  -- Atualiza o id 3 para 4
WHERE email = 'teste@gmail.com';

SELECT * FROM usuarios;

