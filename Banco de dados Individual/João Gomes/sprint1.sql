CREATE DATABASE MediWay;
USE MediWay;

-- Inserção dos dados da empresa
CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR (255) NOT NULL,
cnpj CHAR(14) NOT NULL UNIQUE
);

-- Tabela para armazenar os dados dos uruarios.
CREATE TABLE Usuario (
idUser INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nickname VARCHAR (255) UNIQUE NOT NULL,
cpf CHAR (14) UNIQUE NOT NULL,
telefone VARCHAR(13) NOT NULL,
email VARCHAR (255) UNIQUE NOT NULL,
senha VARCHAR (255) NOT NULL
);

-- Tabela para armazenar a temperatura do arduino.
CREATE TABLE temperatura (
idTemp INT PRIMARY KEY AUTO_INCREMENT,
temperatura FLOAT
);

-- Tabela para verificar o tamanho do veiculo do qual o projeto sera ajustado.
CREATE TABLE veiculo (
idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
motorista VARCHAR(255) NOT NULL,
placa CHAR(7) UNIQUE NOT NULL,
tellmoto VARCHAR(13),
temptrunck FLOAT,
Dt DATETIME,
size int
);

-- Tabela para inserção dos dados dos remedios que vão ser registrados para transporte.
CREATE TABLE medicamentos (
idMedicamento INT PRIMARY KEY AUTO_INCREMENT,
nomeM VARCHAR (50)NOT NULL,
tempe FLOAT NOT NULL
);





	








