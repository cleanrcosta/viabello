-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Nome VARCHAR(10),
Email VARCHAR(10),
Telefone NUMERIC(10),
CPF NUMERIC(10),
ID_Cliente (PK) NUMERIC(10) PRIMARY KEY,
senha VARCHAR(20)
)

CREATE TABLE Reserva (
qtd_pessoas NUMERIC(10),
ID_Reserva (PK) NUMERIC(10) PRIMARY KEY,
data_reserva DATETIME,
Valor_total VARCHAR(10),
ID_Cliente (PK) NUMERIC(10),
ID_Destino NUMERIC(10),
FOREIGN KEY(ID_Cliente (PK)) REFERENCES Cliente (ID_Cliente (PK))
)

CREATE TABLE Destino (
ID_Destino NUMERIC(10) PRIMARY KEY,
Pais VARCHAR(10),
Nome VARCHAR(10),
Preco NUMERIC(10),
Tipo VARCHAR(10),
preco_promocao VARCHAR(10),
Promocao VARCHAR(10)
)

ALTER TABLE Reserva ADD FOREIGN KEY(ID_Destino) REFERENCES Destino (ID_Destino)
