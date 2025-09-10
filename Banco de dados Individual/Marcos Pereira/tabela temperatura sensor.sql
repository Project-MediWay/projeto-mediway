use sprint1;

create table sensor(
idTemp int primary key auto_increment,
temperatura decimal(3,1),
dtRecebimento datetime);

create table empresa(
idEmpresa int primary key auto_increment,
nmeEmpresa varchar(50) not null,
cnpjEmpresa varchar(14) not null unique);

create table usuarios(
idUsuario int primary key auto_increment,
NomeUsuario varchar(50) not null,
login varchar(40) not null unique,
emailUsuario varchar(40) unique,
passwordUsuario varchar (20) not null,
cpfUsuario varchar(11) not null unique,
dtNascimento date not null,
empresa varchar(30));


create table veiculos(
idVeiculo int primary key auto_increment,
placaVeiculo char(7) not null unique,
teleMoto varchar(13),
qntMed int not null,
tempTruck float,
Dt datetime,
tamanhoVeiculo decimal(10,5));


create table medicamentos(
idMed int primary key auto_increment,
nomeMed varchar(30) not null,
tempIdeal decimal(4,2)not null);



