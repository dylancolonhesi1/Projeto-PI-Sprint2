<<<<<<< HEAD
create database bdgrupo7;
use bdgrupo7;

create table usuarios (
idUsuario int primary key,
email_usuario varchar(100),
senha_usuario varchar(50),
nome_usuario varchar(50)
);

create table sensor (
idSensor int primary key,
tipoSensor varchar(20),
tempMax varchar(10),
tempMin varchar(10),
dataTemp date
);

create table setor (
idSetor int primary key,
nomeSetor varchar(50),
tipoGrao varchar(30),
localSetor varchar(30),
statusSetor varchar(30)
);

insert into usuarios values ('1', 'gwesley.fut@gmail.com', '1234567', 'Gabriel'),
('2', 'pedro@gmail.com', '123456', 'Pedro');

insert into sensor values ('1', 'Umid', '30ºC', '15ºC', '2020-09-14'),
('2', 'Temp', '20ºC', '10ºC', '2020-09-13');

insert into setor values ('1', 'Armazenamento de arroz', 'Arroz', 'Guarulhos', 'em funcionamento'),
('2', 'Armazenamento de feijão', 'Feijão', 'Interlagos', 'fechado');

drop database bdgrupo7;
=======
create database bdgrupo7;
use bdgrupo7;

create table usuarios (
idUsuario int primary key,
email_usuario varchar(100),
senha_usuario varchar(50),
nome_usuario varchar(50)
);

create table sensor (
idSensor int primary key,
tipoSensor varchar(20),
tempMax varchar(10),
tempMin varchar(10),
dataTemp date
);

create table setor (
idSetor int primary key,
nomeSetor varchar(50),
tipoGrao varchar(30),
localSetor varchar(30),
statusSetor varchar(30)
);

insert into usuarios values ('1', 'gwesley.fut@gmail.com', '1234567', 'Gabriel'),
('2', 'pedro@gmail.com', '123456', 'Pedro');

insert into sensor values ('1', 'Umid', '30ºC', '15ºC', '2020-09-14'),
('2', 'Temp', '20ºC', '10ºC', '2020-09-13');

insert into setor values ('1', 'Armazenamento de arroz', 'Arroz', 'Guarulhos', 'em funcionamento'),
('2', 'Armazenamento de feijão', 'Feijão', 'Interlagos', 'fechado');

drop database bdgrupo7;
>>>>>>> 17f36c7040d7e532d0d42c24b2a33775b7f51ca6
