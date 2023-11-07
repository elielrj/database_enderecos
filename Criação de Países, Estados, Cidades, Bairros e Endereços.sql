
-- create database teste;
-- use teste;
use senhoritaluxo2;

--  ------------
-- PAÍSES --
--  ------------

create table pais
(
id int primary key auto_increment not null,
nome varchar(100) not null,
name varchar(100) not null,
status boolean not null
);

--  ------------
-- REGIÕES --
--  ------------
create table regiao(
  id int primary key auto_increment not null,
  nome 	varchar(50) not null
);

--  ------------
-- ESTADOS --
--  ------------

create table estado
(
id int primary key auto_increment not null,
nome varchar(100) not null,
sigla varchar(100) not null,
paisId int not null,
regiaoId int not null,
status boolean not null,
foreign key (paisId) references pais(id),
foreign key (regiaoId) references regiao(id)
);

--  ------------
-- CIDADES --
--  ------------

create table cidade
(
id int primary key auto_increment not null,
nome varchar(100) not null,
estadoId int not null,
status boolean not null,
foreign key (estadoId) references estado(id)
);

--  ------------
-- BAIRROS --
--  ------------

create table bairro
(
id int primary key auto_increment not null,
nome varchar(30) not null,
cidadeId int not null,
status boolean not null,
foreign key (cidadeId) references cidade(id)
);

--  ------------
-- BAIRROS --
--  ------------

create table endereco
(
id int primary key auto_increment not null,
logradouro varchar(100) not null,
numero varchar(10) not null,
complemento varchar(10),
bairroId int,
cep int(8) not null,
status boolean,
foreign key (bairroId) references bairro(id)
);
