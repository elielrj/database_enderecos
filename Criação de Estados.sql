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

INSERT INTO `estado` (`id`, `nome`, `sigla`,`paisId`,`regiaoId`,`status`) VALUES
(1,'Acre','AC',33,1,true),
(2,'Alagoas','AL',33,2,true),
(3,'Amapá','AP',33,1,true),
(4,'Amazonas','AM',33,1,true),
(5,'Bahia','BA',33,2,true),
(6,'Ceará','CE',33,2,true),
(7,'Distrito Federal','DF',33,5,true),
(8,'Espírito Santo','ES',33,3,true),
(9,'Goiás','GO',33,5,true),
(10,'Maranhão','MA',33,2,true),
(11,'Mato Grosso','MT',33,5,true),
(12,'Mato Grosso do Sul','MS',33,5,true),
(13,'Minas Gerais','MG',33,3,true),
(14,'Pará','PA',33,1,true),
(15,'Paraíba','PB',33,2,true),
(16,'Paraná','PR',33,4,true),
(17,'Pernambuco','PE',33,2,true),
(18,'Piauí','PI',33,2,true),
(19,'Rio de Janeiro','RJ',33,3,true),
(20,'Rio Grande do Norte','RN',33,2,true),
(21,'Rio Grande do Sul','RS',33,4,true),
(22,'Rondônia','RO',33,1,true),
(23,'Roraima','RR',33,1,true),
(24,'Santa Catarina','SC',33,1,true),
(25,'São Paulo','SP',33,3,true),
(26,'Sergipe','SE',33,2,true),
(27,'Tocantins','TO',33,1,true);

drop table estado;