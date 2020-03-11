---UNIVERSIDADE FEDERAL DE SERGIPE 
---CURSO DE SISTEMAS DE INFORMAÇÃO
---DICIPLINA DE BANCO DE DADOS
---PROVA UNIDADE II
---DATA 03 DE MARÇO DE 2020
---ALUNO - WAGNER SANTOS PRATA - 201500260060

CREATE DATABASE PROVA_UNIDADE02

USE PROVA_UNIDADE02

--- CRIAÇÃO DAS TABELAS 
CREATE TABLE TB_PRODUTO(
	cod_produto int NOT NULL PRIMARY KEY,
	descricao varchar(50),
	categoria varchar(50),
	subcaregoria varchar(50),
	valor numeric(15,3),
)

CREATE TABLE (
	 cod_vendas int NOT NULL PRIMARY KEY,
	 cod_produto int NOT NULL REFERENCES TB_PRODUTO (cod_produto),
	 dt_venda datetime NOT NULL,
	 valor_unitario numeric(15,3) NOT NULL,
	 quantidade int NOT NULL,
	 valor_total numeric(15,3) NOT NULL,
)
--- INSERINDO DADOS NA TABELA
INSERT INTO TB_PRODUTO VALUES (101,'pendriv','informatica','suprimento',50.00)
INSERT INTO TB_PRODUTO VALUES (102,'notebook','informatica','equipamento',2000.00)
INSERT INTO TB_PRODUTO VALUES (103,'caneta','papelaria',DEFAULT,3.00)

SELECT * FROM TB_PRODUTO --- MOSTRAR TABELA  PRODUTO

INSERT INTO TB_VENDAS VALUES (01,101,'20191014',50.00,2,100.00)
INSERT INTO TB_VENDAS VALUES (02,102,'20191023',2000.00,1,2000.00)
INSERT INTO TB_VENDAS VALUES (03,103,'20191102',3.00,10,30.00)

SELECT * FROM TB_VENDAS --- MOSTRAR TABELA  VENDAS

SELECT cod_produto , descricao FROM TB_PRODUTO WHERE subcaregoria IS NULL --- TODOS PRODUTOS COM SUBCATEGORIA NULL

SELECT cod_produto , descricao FROM TB_PRODUTO WHERE descricao LIKE '%caneta%' --- TODOS OS PRODUTOS COM DECRIÇÃO TENHA CANETA 

SELECT cod_vendas, quantidade, valor_total FROM TB_VENDAS WHERE dt_venda LIKE '%2019%' --- TODOA VENDAS DO ANO 2019
																					   --- NO EXEMEPLO NÃO HÁ DESCRIÇÃO NA TABELA!

SELECT A.descricao, B.valor_total FROM TB_PRODUTO A INNER JOIN TB_VENDAS B ON (A.cod_produto = B.cod_produto) --- FILTRO ENTRE TABELAS

SELECT A.categoria, B.valor_total FROM TB_PRODUTO A INNER JOIN TB_VENDAS B ON (A.cod_produto = B.cod_produto) --- FILTRO ENTRE TABELAS 

DROP TABLE TB_VENDAS -- EXCLUIR 
DROP TABLE TB_PRODUTO -- EXCLUIR 





