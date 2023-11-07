create table bairro
(
id int primary key auto_increment not null,
nome varchar(30) not null,
cidadeId int not null,
status boolean not null,
foreign key (cidadeId) references cidade(id)
);


INSERT INTO bairro (id, nome, cidadeId, status) values
(1,'São Bernardo',4429,true),
(2,'São João',4429,true),
(3,'Humaitá de Cima',4429,true),
(4,'Humaitá Centro',4429,true),
(5,'Vila Esperança',4429,true),
(6,'Morrotes',4429,true),
(7,'Dehon',4429,true),
(8,'Revoredo',4429,true),
(9,'Cruzeiro',4429,true),
(10,'Fábio Silva',4429,true),
(11,'Monte Castelo',4429,true),
(12,'Oficinas',4429,true),
(13,'Centro',4429,true),
(14,'Santo Antônio de Pádua',4429,true),
(15,'Vila Moema',4429,true),
(16,'Recife',4429,true),
(17,'Passagem',4429,true),
(18,'Passo do gado',4429,true),
(19,'Santa Luzia',4429,true),
(20,'Praia Redonda',4429,true),
(21,'São Clemente',4429,true),
(22,'Campestre',4429,true),
(23,'São Cristóvão',4429,true);

select id,nome from cidade order by nome;
select id, nome from bairro where cidadeId = 4429;
select * from bairro;
drop table bairro;