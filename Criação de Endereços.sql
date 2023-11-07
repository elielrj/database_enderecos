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