CREATE DATABASE LABORATORIO_0

USE LABORATORIO_0
---APAGAR TODA TABELA 
DROP TABLE TB_CLIENTE 
--- CRIANDO A TABELA 
CREATE TABLE TB_CLIENTE(
	cd_cliente int NOT NULL PRIMARY KEY,
	nm_cliente varchar (50) NOT NULL,
	endereco varchar (60) NOT NULL,
	telefone varchar (10)NULL,
	rg_cadastro varchar (20) NOT NULL,
	dt_cadastro datetime NOT NULL	
)

--- INSERIR DADOS NA TABELA 
INSERT INTO TB_CLIENTE(cd_cliente,nm_cliente,endereco,telefone,rg_cadastro,dt_cadastro)
VALUES(001,'Gilton','Rua Nova', '997065059', '24682411','20200210')

INSERT INTO TB_CLIENTE(cd_cliente,nm_cliente,endereco,telefone,rg_cadastro,dt_cadastro)
VALUES(002,'Wagner Prata','Rua Sizino', '88667252', '24692411','20200210')

INSERT INTO TB_CLIENTE(cd_cliente,nm_cliente,endereco,telefone,rg_cadastro,dt_cadastro)
VALUES(003,'Maria','Rua X', '91956743', '24702411','20200310')

INSERT INTO TB_CLIENTE(cd_cliente,nm_cliente,endereco,telefone,rg_cadastro,dt_cadastro)
VALUES(004,'Jethon','Rua IBNELF', '81956743', '24712411','20200310')

INSERT INTO TB_CLIENTE(cd_cliente,nm_cliente,endereco,telefone,rg_cadastro,dt_cadastro)
VALUES(005,'Rafael','Rua Matriz', NULL, '24722411','20200315')

--- SELECIONA DADOS DA TABELA 
SELECT cd_cliente,nm_cliente,rg_cadastro
FROM TB_CLIENTE

--- SELECIONA DADOS COMPARAÇÕES (< | >)
SELECT cd_cliente,nm_cliente,rg_cadastro
FROM TB_CLIENTE
WHERE dt_cadastro < '20200301'

--- SELECIONA DADOS NULL
SELECT cd_cliente,nm_cliente,rg_cadastro
FROM TB_CLIENTE
WHERE telefone IS NULL 

--- MOSTAR ESTRUTURA DA TABELA 
SELECT * FROM TB_CLIENTE

--- ATUALIZANDO DADOS NA TABELA
UPDATE TB_CLIENTE 
SET endereco = 'Rua Antônio de Jesus', telefone = '7934432133'
WHERE cd_cliente = 3

--- DELETA UM LINHA DA TABELA
DELETE FROM TB_CLIENTE 
WHERE nm_cliente = 'GILTON';

--- DROP DATABASE LABORATORIO_01



