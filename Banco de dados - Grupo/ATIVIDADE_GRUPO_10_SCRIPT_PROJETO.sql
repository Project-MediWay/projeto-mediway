/*
Nome - RA
Vinícius de Santana Gama - 01252087
Gabriel Adryan - 01252028
Alexandre Donizete - 01252046
Paulo Henrique - 01252127
João Vitor Gomes - 01252032
Breno Abilio - 01252018
Marcos Lopis Pereira - 01252034
*/

CREATE DATABASE Mediway;
USE Mediway;

-- CRIAÇÃO DA TABELA USUARIO
CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
cpf VARCHAR(14) NOT NULL UNIQUE,
email VARCHAR(50) UNIQUE,
senha VARCHAR(20) NOT NULL,
telefone VARCHAR(15)
);

-- INSERÇÃO DE DADOS NA TABELA USUARIO
INSERT INTO usuario(nome, cpf, email, senha, telefone) VALUES
	('João Silva','52598742411','joao@gmail.com','123456', '11985378011'),
    ('Ana Silva', '12345678901', 'ana.silva@email.com', 'senha123', '11987654321'),
    ('Carlos Souza', '98765432100', 'carlos.souza@email.com', 'minhaSenha', '21999887766');

-- CRIAÇÃO DA TABELA EMPRESA
CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
CNPJ VARCHAR(18) UNIQUE NOT NULL
);

-- INSERÇÃO DE DADOS NA TABELA EMPRESA
INSERT INTO empresa (nome, CNPJ) VALUES 
	('Farmácia Central LTDA', '12345678000195'),
    ('Translog Transportes SA', '98765432000188'),
    ('Saúde+ Distribuidora ME', '11223344000177');

-- CRIAÇÃO DA TABELA MEDICAMENTO
CREATE TABLE medicamento(
idMedicamento INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL
);

-- INSERÇÃO DE DADOS NA TABELA MEDICAMENTO
INSERT INTO medicamento (nome) VALUES 
    ('Vacina Pfizer'),
    ('Insulina Humana'),
    ('Eritropoetina');

-- CRIAÇÃO DA TABELA SENSOR
CREATE TABLE sensor(
idtemperatura INT PRIMARY KEY AUTO_INCREMENT,
temperatura_atual DECIMAL(4,2) NOT NULL,
data_hora DATETIME NOT NULL
);

-- INSERÇÃO DE DADOS NA TABELA SENSOR
INSERT INTO sensor (temperatura_atual, data_hora) VALUES
	(5.0, '2025-08-26 10:00:00'),
	(7.5, '2025-08-26 10:15:00'),
	(1.2, '2025-08-26 11:00:00');

-- CRIAÇÃO DA TABELA VEICULO
CREATE TABLE veiculo(
idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
modelo VARCHAR(30),
marca VARCHAR (30),
tamanhoVeiculo VARCHAR (20),
placa VARCHAR (7) UNIQUE,
qtdMedicamento INT,
CONSTRAINT chkTamanhoVeiculo CHECK (tamanhoVeiculo IN('Pequeno porte', 'Médio porte', 'Grande porte'))
);

-- INSERÇÃO DE DADOS NA TABELA VEICULO
INSERT INTO veiculo (modelo, marca, tamanhoVeiculo, placa) VALUES
	('Accelo 1016', 'Mercedes-Benz', 'Médio porte', 'PQR3456'),
	('VM 270', 'Volvo', 'Grande porte', 'STU7890'),
	('Daily 35S14', 'Iveco', 'Pequeno porte', 'VWX1234');

-- COMANDOS:
SELECT * FROM usuario;
SELECT * FROM empresa;
SELECT * FROM medicamento;
SELECT * FROM veiculo;
DESCRIBE usuario;
DESCRIBE empresa;
DESCRIBE medicamento;
DESCRIBE veiculo;
SHOW TABLES;
