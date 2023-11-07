CREATE TABLE Regiao (
  id 	INT 		NOT NULL AUTO_INCREMENT,
  nome 	VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

-- Insert Data --

Insert into Regiao (id, nome) values 
(1, 'Norte'),
(2, 'Nordeste'),
(3, 'Sudeste'),
(4, 'Sul'),
(5, 'Centro-Oeste');