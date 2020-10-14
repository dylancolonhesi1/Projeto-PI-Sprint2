create database mobility_solution;
use mobility_solution;
create table Empresa(
    cnpj char(17) primary key,
    nome varchar(30),
    emailEmpresa varchar(30),
    inscricaoEstadual char(9),
    nomeResponsavel varchar(50),
    estado varchar(30),
    cidade varchar(30),
    bairro varchar(30),
    cep char(9),
    rua varchar(30)
);
create table Usuario(
	idUsuario int primary key auto_increment,
    nome varchar(30),
    email varchar(40),
    senha varchar(15),
    fkEmpresa char(17),
    foreign key (fkEmpresa) references Empresa(cnpj)
);
create table Silo(
	idSilo int primary key auto_increment,
    tamanho varchar(20),
    produto varchar(20),
    fkCliente int,
    foreign key(fkCliente) references Empresa(cnpj)
);
create table registro(
idRegistro int primary key auto_increment,
registro int,
dataregistro datetime,
fkSilo int,
foreign key (FkSilo) references Silo (idSilo)
);