create database Silos_de_armazenamento;

use Silos_de_armazenamento;

-- criação de tabela
create table usuario (
id_usuario int primary key,
nome varchar (40),
email varchar (50),
senha varchar (40),
localização varchar (40),
telefone_contato varchar (40)
);

-- dados usuário
insert into usuario values (20201,'Roberto Silva', 'robertosilva119@gmail.com', 0102344, 'Campinas-SP', 199481312619);
insert into usuario values (202014,'Karina Rodrigues', 'karinarodrigues@gmail.com', 0102345, 'Taboão da Serra-SP', 11997654231),
						   (202019,'Rodrigo Souza', 'rodrigosouza12@gmail.com', 0102356, 'São Paulo-SP', 11994785312),
                           (202018,'Juliana Silva', 'julianasilva3301@gmail.com', 0102380, 'São Paulo-SP', 11952082643),
                           (202030, 'Gustavo Oliveira', 'gustavooliveirasp@gmail.com', 0102441, 'São Paulo-SP', 11918760384);
                           
                           
 -- Criando tabela de sinal de temperatura                          
create table temperatura_e_umidade (
id_sin int primary key,
sin_temp varchar (30),
sin_umid varchar (30),
sin_data varchar (30),
sin_hour varchar (30)
);

-- inserindo dados na tabela de temp e umidade  
insert into temperatura_e_umidade values (2020199, '23ºC', '30%', '11/09/2020', '12:30');
 insert into temperatura_e_umidade values (2020198, '21ºC', '20%', '12/09/2020', '13:32'),
										  (2020197, '19ºC', '60%', '14/09/2020', '11:32'),
                                          (2020196, '30ºC', '77%', '14/12/2020', '15:00'),
                                          (202004, '31ºC', '78%', '17/12/2020', '14:00');


-- Tabela de adms --
create table administradores (
id_adm varchar (10),
nome varchar (30),
email varchar (40),
senha varchar (10)
);

-- Inserindo dados na tabela de adms
insert into administradores values (201918, 'Dylan Colonhesi', 'colonhesidylan@gmail.com', 'projpi@1');
insert into administradores values (202019, 'Samuel Almeida', 'samuelalmeida@Outlook.com', '@12345'),
								    (201817, 'Leonardo Sanchez', 'leonardosanchez@Outlook.com', 'sp1@3344'),
								  (202001, 'Ju Souza', 'jusouza1234a@gmail.com', '@souzaPI'),
                                  (202005, 'Caio Elcio', 'caioelcio@hotmail.com', 'silo@335'),
                                  (202006, 'Gabriel Wesley', 'gabrielwesley2020@gmail.com', '@7654321GW');


-- comandos da tabela usuário
                           