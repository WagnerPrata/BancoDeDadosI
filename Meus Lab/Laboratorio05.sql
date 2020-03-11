CREATE DATABASE LABORATORIO_05
--- USANDO BANCO DE DADOS ESPECIFICO - LABORATORIO 03
USE LABORATORIO_05
-------------------------------------------------------------------------
CREATE TABLE TB_USUARIO(
	cd_usuario int NOT NULL,
	nm_usuario varchar(50) NOT NULL,
	dt_casdatro datetime NOT NULL,
	status_usuario varchar(10) NOT NULL,
)

--- ALTERA QUE CD_CLIENTE É A PRIMARY KE
ALTER TABLE TB_USUARIO ADD CONSTRAINT PK_usuario PRIMARY KEY (cd_usuario) 
--- ALTERA OS STATUS
ALTER TABLE TB_USUARIO  ADD CONSTRAINT CK_status_usuario CHECK (status_usuario IN ('Ativo','Inativo'))

-----------------------------------------------------------------------

CREATE TABLE TB_CATEGORIA(
	cd_categoria int NOT NULL,
	nm_categoria varchar(50) NOT NULL,
	vl_aluguem float,
)

ALTER TABLE TB_CATEGORIA ADD CONSTRAINT PK_cd_categoria PRIMARY KEY (cd_categoria)
ALTER TABLE TB_CATEGORIA ADD CONSTRAINT UQ_nm_categoria UNIQUE (nm_categoria)
ALTER TABLE TB_CATEGORIA ADD CONSTRAINT VL_vl_aluguem CHECK (vl_aluguem > 0)

-----------------------------------------------------------------------
CREATE TABLE TB_DVD(
	cd_dvd int NOT NULL,
	titulo varchar(50) NOT NULL,
	cd_categoria int NULL,
)

ALTER TABLE TB_DVD ADD CONSTRAINT PK_cd_dvd PRIMARY KEY (cd_dvd)
ALTER TABLE TB_DVD ADD CONSTRAINT FK_cd_categoria FOREIGN KEY (cd_categoria) REFERENCES TB_CATEGORIA (cd_categoria) ????

-----------------------------------------------------------------------

CREATE TABLE TB_ALUGUEL (
   cd_usuario int not null,
   cd_dvd     int not null,
   dt_aluguel datetime not null,
   dt_devolucao datetime not null,
   dt_devolvido datetime null,
   valor_aluguel numeric (15,2) not null,
   valor_multa  numeric (15,2) null,
   st_pagamento varchar(10) not null
)


