-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Nome VARCHAR(50),
Email VARCHAR(50),
Telefone VARCHAR(15),
CPF VARCHAR(14),
ID_Cliente (PK) INTEGER PRIMARY KEY
)

CREATE TABLE Reserva (
qtd_pessoas INTEGER,
ID_Reserva (PK) INTEGER PRIMARY KEY,
data_reserva DATETIME,
ID_Cliente (PK) INTEGER,
ID_Destino INTEGER,
FOREIGN KEY(ID_Cliente (PK)) REFERENCES Cliente (ID_Cliente (PK))
)

CREATE TABLE Destino (
ID_Destino INTEGER PRIMARY KEY,
Pais VARCHAR(10),
Nome VARCHAR(10),
Preco VARCHAR(10)
)

ALTER TABLE Reserva ADD FOREIGN KEY(ID_Destino) REFERENCES Destino (ID_Destino)
