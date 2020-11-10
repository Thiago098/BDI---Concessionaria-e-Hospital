CREATE DATABASE bdConcessionaria
USE bdConcessionaria

-- TABELA VENDAS 
CREATE TABLE tbVendas(
    idVenda INT PRIMARY KEY IDENTITY (1,1)
    ,dataVenda DATETIME 
    ,totalVenda VARCHAR (30)
    );
    
CREATE TABLE tbSubVenda(
    idSubVenda INT PRIMARY KEY IDENTITY (1,1)
    ,idVenda INT FOREIGN KEY REFERENCES tbVendas(idVenda)
    ,subTotal VARCHAR (30) 
    );
    
CREATE TABLE tbFabricante(
    idFabricante INT PRIMARY KEY IDENTITY (1,1)
    ,nomeFabricante VARCHAR (30) 
    ,lograFabricante VARCHAR (30) 
    ,cidadeFabricante VARCHAR (30) 
    ,ufFabricante VARCHAR (30) 
    );

CREATE TABLE tbTelFabri(
    idTelFabri INT PRIMARY KEY IDENTITY (1,1)
    ,numeroTelefoneFabricante VARCHAR (30) 
    ,cotatoFabricante VARCHAR (30) 
    ,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
    );

CREATE TABLE tbModelo(
    idModelo INT PRIMARY KEY IDENTITY (1,1)
    ,nomeModelo VARCHAR (30) 
    ,valorFabricante VARCHAR (30) 
    ,anoFabricante INT 
    ,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
    );

CREATE TABLE tbVeiculo(
    idVeiculo INT PRIMARY KEY IDENTITY (1,1)
    ,descVeiculo VARCHAR (30) 
    ,valorVeiculo VARCHAR (30)
    ,anoFabricado DATE 
    ,idModelo  INT FOREIGN KEY REFERENCES tbModelo(idModelo)
    ,idSubVenda  INT FOREIGN KEY REFERENCES tbSubVenda(idSubVenda)
    );