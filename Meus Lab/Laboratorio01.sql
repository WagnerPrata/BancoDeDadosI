CREATE DATABASE LABORATORIO_01
--- USANDO BANCO DE DADOS ESPECIFICO - LABORATORIO 01
USE LABORATORIO_01

---***************************************************************************************************************************
--- CRIANDO TABELA
CREATE TABLE TB_FUNCIONARIO(
	mat_funcionario int NOT NULL PRIMARY KEY,
	nm_funcionario varchar(50) NOT NULL,
	cpf_funcionario varchar(11) NOT NULL UNIQUE,
	cd_departamento int NOT NULL REFERENCES TB_DEPARTAMENTO(cod_departamento)
)
--- PREENCHER COM DADOS
INSERT INTO FUNCIONARIO  VALUES (33,'Wagner Prata','06051771557',1)

---***************************************************************************************************************************

--- CRIAR TABELA 
CREATE TABLE TB_DEPARTAMENTO(
	cod_departemento int NOT NULL PRIMARY KEY,
	nm_departamento varchar(50) NOT NULL,
)
--- PREENCHER COM DADOS 
INSERT INTO TB_DEPARTAMENTO  VALUES (1, 'TI'), (2, 'RH')

--***************************************************************************************************************************

--- VALORES MULTIVALORAVEIS É NECESSARIO CRIAR OUTRA TABELA E LIGA-LA COM A TABELA PAI.
CREATE TABLE TB_TELEFONE(
	mat_telefone int NOT NULL REFERENCES TB_FUNCIONARIO(mat_funcionario),
	telefone varchar(15) NOT NULL,
	PRIMARY KEY (mat_telefone, telefone)
)
--- PREENCHER COM DADOS 
INSERT INTO TB_TELEFONE  VALUES (33,'996076059')

---***************************************************************************************************************************

-- CRIAR TABELA 
CREATE TABLE TB_CATEGORIA(
	cod_categoria int NOT NULL PRIMARY KEY,
	des_categoria varchar(50) NOT NULL,
)
--- PREENCHER COM DADOS
INSERT INTO TB_CATEGORIA VALUES (1000, 'HARDWARE'),(2000, 'SOFTWARE')

---***************************************************************************************************************************
-- CRIAR TABELA 
CREATE TABLE TB_TERCERIZADO(
	mat_tercerizado int	NOT NULL PRIMARY KEY,
	nome varchar(50) NOT NULL
)
--- PREENCHER COM DADOS
INSERT INTO TB_TERCERIZADO
VALUES (100, 'Carlos Menezes')

---***************************************************************************************************************************

--- CRIAR TABELA - RELAÇÃO DE N\N - NOVA TABELA
CREATE TABLE TB_ATENDER(
	mat_atender int NOT NULL REFERENCES TB_TERCERIZADO(mat_tercerizado),
	cd_categoria int NOT NULL REFRENCES TB_CATEGORIA(cod_categoria), -- ???????
	PRIMARY KEY (mat_atender,cd_categoria)
)
--- PREENCHER COM DADOS
INSERT INTO TB_ATENDER
VALUES (100,1000), (100,2000)

---***************************************************************************************************************************

--- CRIAR TABELA - RELAÇÃO (N\N) 
CREATE TABLE TB_SOLICITACAO(
	mat_solicitacao int NOT NULL REFERENCES TB_FUNCIONARIO(mat_funcionario),
	cd_categoria int NOT NULL REFRENCES TB_CATEGORIA(cod_categoria),
	dat_abertura DATETIME NOT NULL,
	desc_problema varchar(100) NOT NULL,
	dat_fechamento DATETIME NULL,
	status varchar(50) NOT NULL DEFAULT ('Em aberto'),
	PRIMARY KEY (mat_solicitacao, cd_categoria, dat_abertura )
)
---???????????????????????????????????????????????????
ALTER TABLE TB_SOLICITACAO ADD CONSTRAINT CK_STATUS CHECK (STATUS IN ('Em Aberto','Fechado','Cancelado'))
ALTER TABLE TB_SOLICITACAO ADD CONSTRAINT CK_STATUS_DATA 
CHECK ((status = 'Em Aberto' AND dat_fechamento IS NULL) OR (status IN ('Fechado', 'Cancelado') AND dat_fechamento IS NOT NULL))
---???????????????????????????????????????????????????
--- PREENCHER COM DADOS
INSERT INTO TB_SOLICITACAO (mat_solicitacao, cd_categoria, dat_abertura, desc_problema)
VALUES (10, 1000,'20190101','Impressora com problema no escaneamento')

INSERT INTO TB_SOLICITACAO (mat_solicitacao, cd_categoria, dat_abertura, desc_problema, dat_fechament, status)
VALUES (10, 1000,'20190101','Impressora com problema no escaneamento','20190102', 'Cancelado')

---***************************************************************************************************************************
--- MOSTRAS TABELAS
SELECT * FROM TB_FUNCIONARIO
SELECT * FROM TB_DEPARTAMENTO
SELECT * FROM TB_TELEFONE --- CRIA POR MOTIVO DE RELAÇÃO (MULTIVALORADOS)

SELECT * FROM TB_CATEGORIA
SELECT * FROM TB_TERCERIZAD0
SELECT * FROM TB_ATENDER ---  CRIA POR MOTIVO DE RELAÇÃO (N\N)
SELECT * FROM TB_SOLICITACAO -- CRIA POR MOTIVO DE RELAÇÃO (N\N)

---***************************************************************************************************************************
--- APAGAR TABELAS
---DROP TABLE TB_FUNCIONARIO
---DROP TABLE TB_DEPARTAMENTO
---DROP TABLE TB_TELEFONE

---DROP TABLE TB_CATEGORIA
---DROP TABLE TB_TERCERIZAD0
---DROP TABLE TB_ATENDER 
---DROP TABLE TB_SOLICITACAO








