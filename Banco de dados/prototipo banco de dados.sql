<<<<<<< HEAD
create database seven_solutions;
use seven_solutions;
create table usuario (
id int primary key,
nome varchar (50),
email varchar (50),
senha varchar (35),
celular char (11)
);
insert into usuario values (1, 'Fernanda Ferreira', 'fernanda05@gmail.com', 'fernanda123', '11912345678'),
(2, 'Davi Nascimento', 'davinasc@hotmail.com', 'davi4561', '11987654321'),
(3, 'Debora Rodrigues', 'deborarodri@gmail.com', 'debora9495', '11982716340');
create table administradores (
id int primary key,
nome varchar (50),
email varchar (50),
senha varchar (35)
);
insert into administradores values (1, 'Caio Elcio', 'caioelcio28@gmail.com', 'dht11c09'),
(2, 'Guilherme Miranda', 'guilherme05mir@hotmail.com', 'dht11g09'),
(3, 'Dylan Colonhesi', 'dylancolonhesi@gmail.com', 'dht11d09');
create table sensor_dht11_temperatura_umidade (
id int primary key,
temperatura varchar (7),
umidade varchar (7)
);
insert into sensor_dht11_temperatura_umidade values (1, '-4°C', '68%'),
(2, '12°C', '72%'),
(3, '5°C', '84%');

=======
create database seven_solutions;
use seven_solutions;
create table usuario (
id int primary key,
nome varchar (50),
email varchar (50),
senha varchar (35),
celular char (11)
);
insert into usuario values (1, 'Fernanda Ferreira', 'fernanda05@gmail.com', 'fernanda123', '11912345678'),
(2, 'Davi Nascimento', 'davinasc@hotmail.com', 'davi4561', '11987654321'),
(3, 'Debora Rodrigues', 'deborarodri@gmail.com', 'debora9495', '11982716340');
create table administradores (
id int primary key,
nome varchar (50),
email varchar (50),
senha varchar (35)
);
insert into administradores values (1, 'Caio Elcio', 'caioelcio28@gmail.com', 'dht11c09'),
(2, 'Guilherme Miranda', 'guilherme05mir@hotmail.com', 'dht11g09'),
(3, 'Dylan Colonhesi', 'dylancolonhesi@gmail.com', 'dht11d09');
create table sensor_dht11_temperatura_umidade (
id int primary key,
temperatura varchar (7),
umidade varchar (7)
);
insert into sensor_dht11_temperatura_umidade values (1, '-4°C', '68%'),
(2, '12°C', '72%'),
(3, '5°C', '84%');

>>>>>>> 17f36c7040d7e532d0d42c24b2a33775b7f51ca6
