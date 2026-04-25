CREATE DATABASE estudos_sql;
USE estudos_sql;

-- Sempre criar o banco com CREATE DATABASE e ativá-lo com USE

/* ======================================
   Exemplo de comentário em bloco
   ====================================== */

-- Criando tabela usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'Email do usuário',
    endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário'
);

-- Criando tabela destinos
CREATE TABLE destinos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL UNIQUE COMMENT 'Nome do destino',
    descricao VARCHAR(100) NOT NULL COMMENT 'Descrição do destino'
);

-- Criando tabela de reservas
CREATE TABLE reservas (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Identificador único da reserva',
    id_usuario INT COMMENT 'Referência ao ID do usuário da reserva',
    id_destino INT COMMENT 'Referência ao ID do destino da reserva',
    data DATE COMMENT 'Data da reserva',
    status VARCHAR(200) DEFAULT 'pendente' COMMENT 'Status da reserva: confirmada, pendente ou cancelada'
);

-- Inserir dados na tabela usuarios
INSERT INTO usuarios (nome, email, data_nascimento, endereco) VALUES
('Rodrigo da Costa', 'rodri@gmail.com', '2000-10-10', 'Rua Fonseca, 120 - Bairro Lordes/MG'),
('Romario', 'roma@gmail.com', '1997-10-10', 'Rua Ferreira, 120 - Bairro Savassi/MG'),
('Ricardo', 'rom@gmail.com', '1997-10-10', 'Rua Ferreira, 120 - Bairro Savassi/MG'),
('Ricardo', 'teste@gmail.com', '1997-10-10', 'Rua Ferreira, 120 - Bairro Savassi/MG');

-- Visualizando os dados da tabela usuarios
SELECT * FROM usuarios;

-- Inserindo dados tabela destinos
INSERT INTO destinos (nome, descricao) VALUES
('Foz do Iguaçu', 'Linha aérea'),
('Parque Aquático', 'Linha de ônibus'),
('Rio de Janeiro', 'Linha aérea');

-- Visualizando os dados da tabela destinos
SELECT * FROM destinos;

-- Inserindo dados tabela reservas
INSERT INTO reservas (id_usuario, id_destino, data, status) VALUES
(1, 1, '2026-07-01', 'pendente'),
(2, 1, '2026-07-01', 'pendente'),
(3, 2, '2026-07-01', 'pendente'),
(4, 2, '2026-07-01', 'pendente');

-- Visualizar os dados da tabela reservas
SELECT * FROM reservas;

/* == Atualizar registro == */
UPDATE usuarios
SET email = 'ricardo_corrigido@gmail.com'
WHERE email = 'teste@gmail.com';

-- Visualizando os dados apos a atualização
SELECT * FROM usuarios;
