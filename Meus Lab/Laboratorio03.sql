CREATE DATABASE LABORATORIO_03
--- USANDO BANCO DE DADOS ESPECIFICO - LABORATORIO 03
USE LABORATORIO_03

---------------------------------------------------------------
--- CRIAÇÃO DE TABELA
CREATE TABLE TB_DVD(
	Codigo int NOT NULL PRIMARY KEY,
	Titulo varchar(20)NOT NULL,
	Ano_Lançamento varchar(20) NOT NULL,
	Categoria varchar(20) NOT NULL,
)

CREATE TABLE TB_CLIENTE(
	Matricula int NOT NULL PRIMARY KEY,
	Nome varchar(50) NOT NULL,
	CPF varchar(50) NOT NULL,
	Telefone varchar(50),
	Data_Cadastro datetime NOT NULL,
)

-----------------------------------------------------------
--- INSERIR DADOS
INSERT TB_DVD ( Codigo, Titulo, Ano_Lançamento,Categoria ) VALUES (100,'Piratas do Caribe','2005','Ação')
INSERT TB_DVD ( Codigo, Titulo, Ano_Lançamento,Categoria ) VALUES (101,'As Branquelas','2008','Comedia')
INSERT TB_DVD ( Codigo, Titulo, Ano_Lançamento,Categoria ) VALUES (102,'O Vingador','2011','Suspence')


INSERT TB_CLIENTE (Matricula, Nome, CPF, Telefone, Data_Cadastro ) VALUES (1,'Wagner Prata','060','96075','20190414')
INSERT TB_CLIENTE (Matricula, Nome, CPF, Telefone, Data_Cadastro ) VALUES (2,'Walter Costa','058','89575','20120416')
INSERT TB_CLIENTE (Matricula, Nome, CPF,Data_Cadastro ,Telefone) VALUES (8,'Bruno Alves','160','20120814',DEFAULT)

SELECT *FROM TB_CLIENTE 
--- DROP TABLE TB_CLIENTE 
SELECT *FROM TB_DVD 

SELECT *FROM TB_DVD WHERE Ano_Lançamento = 2005 --- FILTAR POR ANO 
SELECT *FROM TB_DVD WHERE Ano_Lançamento = 2011 AND Categoria = 'Suspence' -- FILTRAR POR ANO E CATEGORIA

SELECT Codigo as Identificação , Titulo FROM TB_DVD --- FILTRAR COLUNAS DA TABELA (CODIGO E TITULO)

SELECT *FROM TB_CLIENTE ORDER BY Nome --- FILTAR DADOS EM ORDEM
SELECT *FROM TB_DVD ORDER BY Ano_Lançamento DESC --- FLTRAR DE FORMA DECRECENTE
SELECT *FROM TB_CLIENTE WHERE Telefone IS NOT NULL --- FILTRAR TABELA SEM  NULL
SELECT *FROM TB_DVD WHERE Titulo LIKE '%Caribe%'

UPDATE TB_CLIENTE SET Telefone = '0000' WHERE Matricula = 1 --- ATUALIZAR DADOS POR MATRICULA
UPDATE TB_DVD SET Categoria = 'Aventura' WHERE Categoria = 'Ação' -- ATUALIZAR DADOS DE UMA TABELA GERAL

DELETE FROM TB_DVD WHERE Categoria = 'Comedia' --- DELETA LINHA COM COLUNA COM NOME IGUAL A CAMEDIA
DELETE TB_CLIENTE WHERE Telefone IS NULL --- DELETA LINHA COM TELEFONE IGUAL A NULL


