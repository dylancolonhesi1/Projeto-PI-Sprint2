create database SevenSolutions;
use SevenSolutions;
create table Empresa(
	idEmpresa INT primary key auto_increment,
    cnpj char(18), 
    nome varchar(45),
    emailEmpresa varchar(45),
    uf char(2),
    cidade varchar(30),
    bairro varchar(30),
    cep char(9),
    rua varchar(30),
    telefone1 char(14),
    telefone2 char(14));
create table administrador(

idAdm int primary key auto_increment, 
nome varchar(50),
emailAdm varchar(50),
senhaAdm varchar(30),
fk_empresa int,
foreign key (fk_empresa) references empresa(idEmpresa)
);
create table usuario (
idUsuario int primary key auto_increment, -- auto_increment serve para q id seja contado do 1 até o limite
nomeUsuario varchar (50),
emailUsuario varchar (50),
senhaUsuario varchar (30),
fk_administrador int, 
foreign key(fk_administrador) references administrador(idAdm),
fk_empresa int,
foreign key (fk_empresa) references Empresa(idEmpresa));
create  table silos (
idSilo int primary key auto_increment,
produto varchar(10),
qtdSensores int,
fk_empresa int,
foreign key (fk_empresa) references Empresa(idEmpresa)
);
create table sensor (
idSensor int primary key auto_increment,
tipo_sensor varchar (5),
situacao varchar(3),
check (situacao = 'on' or situacao= 'off'),
fk_silo int,
foreign key (fk_silo) references silos(idSilo),
fk_empresa int,
foreign key (fk_empresa) references Empresa (idEmpresa)
);
create table registro(
idRegistro int primary key auto_increment,
data_temp_umd date,
reg_temp int,
reg_umd int,
fk_sensores int,
foreign key (fk_sensores) references sensor(idSensor),
fk_silo int,
foreign key (fk_silo) references silos(idSilo));
create table contato(
idContato int primary key,
nomeContato varchar(45),
nomeEmpresa varchar(30),
email varchar (45),
telefone char(14),
mensagem text
);




    
