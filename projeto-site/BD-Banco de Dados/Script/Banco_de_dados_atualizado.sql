create database projeto_silos;

use projeto_silos;

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
id_sensor int primary key,
tipo_sensor char(1)
);

-- criando tabela temperatura (estamos trabalhando com temperatura)
create table temperatura (
data_temperatura timestamp, -- timestamp, serve para capturar a data e hora da inserção de dados 
registro_temp varchar(5),
fk_sensores int,
foreign key (fk_sensores) references sensores(id_sensor));
 -- puxa o dado do id_sensor o qual identifica qual é o tipo de sensor
 
 -- inserindo dados na tabela administrador
 insert into administrador values (01, 'Dylan Colonhesi', 'colonhesidylan@gmail.com', 12345),
                                  (02, 'José Carlos', 'josecarlos@gmail.com', 223344);
insert into administrador values (03, 'Adrianda Souza', 'adriana@gmail.com', 987654);

-- conferindo dados da tabela adm 
select * from administrador;
select * from administrador where nome like 'D%';
select * from administrador where senhaAdm like '%4_';
select nome, senhaAdm from administrador;

-- inserindo dados na tabela usuário
insert into usuario values (3, 'Rodrigo Dias', 'rodrigo@gmail.com', 1234, 01);
insert into usuario values (2, 'Aline Silva', 'alinesilva@gmail.com', 54321, 02);
insert into usuario values (1, 'Roberto Andrade', 'andraderoberto@gmail.com', 545667, 01);

-- conferindo dados da tabela
select * from usuario;
select * from usuario where email_usuario like 'A%';
select * from usuario where senha_usuario like '%1';


-- inserindo dados na tabela sensores
insert into sensores values(01,'T'),
						 (02, 'U');

-- conferindo dados da tabela sensores
select * from sensores;



-- inserindo dados da tabela temperatura
insert into temperatura values ('2020-09-21','21ºC', 01),
							   ('2020-09-21', '60%', 02);

-- conferindo dados da tabela temperatura
select * from temperatura;
select * from temperatura where registro_temp=21;
select * from temperatura where registro_temp=60;



                               

                         



