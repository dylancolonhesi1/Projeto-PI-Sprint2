create database SevenSolutions;
use SevenSolutions;
create table contato(
idContato int primary key,
nome varchar(50),
nomeEmpresa varchar(30),
Email varchar (40),
Telefone varchar(40),
Mensagem text
);
create table CDT_CLiente(
idCliente int primary key auto_increment,
Nome varchar(30),
Sobrenome varchar(20),
NomEmpresa varchar(20),
DDD char(3),
Telefone char(8) ,
Email varchar(40),
CNPJ_CPF varchar(20),
Qtd_Silos int,
Qtd_Sensor int
)auto_increment=100;

create table usuario(
idUsuario int primary key auto_increment,
fkCliente int,
foreign key (fkCliente) references CDT_Cliente(idCLiente),
senha int,
tipoAcesso varchar(20)
)auto_increment=1000;

create  table silos (
idSilos int primary key,
lugar varchar(70),
tipoGrao varchar (30),
fkCliente int,
foreign key (fkCliente) references CDT_Cliente(idCLiente)
)auto_increment=200;

create table sensor (
idSensor int primary key auto_increment,
situacao varchar(3),
check (situacao = 'on' or situacao= 'off'),
fkSilos int,
foreign key (fkSilos) references silos(idSilos)
)auto_increment=1;

create table evento(
idEvento int primary key auto_increment,
DiaMes   date,
hora  time,
temperatura int,
fkSensor int,
foreign key(fkSensor) references sensor(idSensor)
)auto_increment=50; 