create database projeto_silos_dylan;

use projeto_silos_dylan;

-- Criando a tabela adm (a que da permissão para o usuário as ferramentas do site, resposável pelo usuário)
create table administrador(

idAdm int primary key auto_increment, -- auto_increment serve para q id seja contado do 1 até o limite
nome varchar(50),
emailAdm varchar(50),
senhaAdm varchar(30)
);

-- criando tabela usuário (que tem acesso as ferramentas, o usuario sempre estará ligado ao idAdm)
create table usuario (
idUsuario int primary key auto_increment, -- auto_increment serve para q id seja contado do 1 até o limite
nome varchar (50),
email_usuario varchar (50),
senha_usuario varchar (30),
fk_administrador int, foreign key(fk_administrador) references administrador(idAdm));
-- foreing key (chave estrangeira) torna as tabelas relacionais (quando um dado se liga ao outro)
-- references é para puxar dados de referencia a outra tabela 'tabela usuario se relaciona com adm
-- então o usuário se relaciona com o adm 
-- em caso de deletar, primeiro será o usuário, depois o adm

-- criando tabela sensores 
create table sensores (
id_sensor int primary key auto_increment,
tipo_sensor char(5),
tipo_grao varchar (10)
);

-- criando tabela temperatura (estamos trabalhando com temperatura)
create table temperatura_umidade (
data_temp_umd date,
registro_temp varchar(5),
registro_umd varchar(5),
fk_sensores int,
foreign key (fk_sensores) references sensores(id_sensor));
 -- puxa o dado do id_sensor o qual identifica qual é o tipo de sensor e tipo de grãos
 
 
 
 
-- inserindo dados na tabela administrador
 insert into administrador values (null, 'Dylan Colonhesi', 'colonhesidylan@gmail.com', 12345),
                                  (null, 'José Carlos', 'josecarlos@gmail.com', 223344);

-- conferindo dados da tabela adm 
select * from administrador;
select * from administrador where nome like 'D%';
select * from administrador where senhaAdm like '%4_';
select nome, senhaAdm from administrador;

-- inserindo dados na tabela usuário
insert into usuario values (null, 'Rodrigo Dias', 'rodrigo@gmail.com', 1234, 01),
                           (null, 'Aline Silva', 'alinesilva@gmail.com', 54321, 02);


-- conferindo dados da tabela
select * from usuario;
select * from usuario where email_usuario like 'A%';
select * from usuario where senha_usuario like '%1';


-- inserindo dados na tabela sensores
insert into sensores values(null,'DHT11','cafe'),
						 (null, 'DHT11', 'soja');

-- conferindo dados da tabela sensores
select * from sensores;



-- inserindo dados da tabela temperatura
insert into temperatura_umidade values ('2020-02-13','21ºC','60%',01),
									   ('2020-09-21','20ºC', '60%', 02);