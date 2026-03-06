CREATE DATABASE IF NOT EXISTS Informaçoes_Pessoais;
USE Informaçoes_Pessoais;

CREATE TABLE IF NOT EXISTS Pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    genero ENUM('Masculino', 'Feminino', 'Prefiro não dizer') NOT NULL,
    nacionalidade VARCHAR(100),
    email VARCHAR(200) UNIQUE NOT NULL,
    estado_civil ENUM('Solteiro', 'Casado', 'Viuvo', 'Divorciado') NOT NULL,
    nome_pai VARCHAR(100),
    nome_mae VARCHAR(100)
);
-- Informaçoes pessoais
INSERT INTO Pessoas (nome_completo, idade, genero, nacionalidade, email, estado_civil, nome_pai, nome_mae)
VALUES
('Jose Silva Magalhaes', 50, 'Masculino', 'Brasileiro', 'josesllilva123@emailteste3.com', 'Solteiro', 'Marcelo Silva', 'Maria Silva'),
('Rita Oliveira Pimenta', 25, 'Feminino', 'Brasileira', 'ritaa.oliveira@emailteste2.com', 'Prefiro não dizer', 'Ricardo Oliveira Pimenta', 'Lurdes Pimenta'),
('Lucas Daniel Romero', 30, 'Masculino', 'Espanhol', 'lucasromero@emailteste3.com', 'Casado', 'Daniel Romero', 'Miria Romero');

-- Atualizando ID 1
UPDATE Pessoas
SET idade = 31, email = 'jose.silva123@emailteste.com', nacionalidade = 'Chileno'
WHERE id = 1;

-- Remover a pessoa com ID 2
DELETE FROM Pessoas
WHERE id = 2;

