CREATE DATABASE MediWay;

USE MediWay;

CREATE TABLE empresas (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
CNPJ VARCHAR(40)
);

CREATE TABLE veiculos (
idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
tamanho VARCHAR(7),
placa CHAR(7),
modelo VARCHAR(40),
CONSTRAINT chkTamanho CHECK( tamanho IN( 'Pequeno', 'Médio', 'Grande'))
);



CREATE TABLE temperatura (
idTemp INT PRIMARY KEY AUTO_INCREMENT,
temperatura DECIMAL(4,2),
horario DATETIME
);



CREATE TABLE medicamentos (
idMedicamento INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
temperatura VARCHAR(50)
);

