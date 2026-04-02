USE dio_ciencia_dados_projeto_1_alterado;
INSERT INTO usuarios_novos (id, nome,email, data_nascimento, endereco) 
VALUES (1, "Rodrigo da Costa", "rodri@gmail.com", "2000-10-10", "Rua Fonseca, 120 - Bairro Lordes/MG");

INSERT INTO usuarios_novos (id, nome,email, data_nascimento, endereco) 
VALUES (2, "Romario", "roma@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");

INSERT INTO usuarios_novos (id, nome,email, data_nascimento, endereco) 
VALUES (3, "Ricardo", "rom@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");

INSERT INTO usuarios_novos (id, nome,email, data_nascimento, endereco) 
VALUES (3, "Ricardo", "teste@gmail.com", "1997-10-10", "Rua Ferreira, 120 - Bairro Savassi/MG");

-- Visualizar os dados

SELECT * FROM usuarios_novos;