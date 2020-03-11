CREATE DATABASE LABORATORIO_02
--- USANDO BANCO DE DADOS ESPECIFICO - LABORATORIO 02
USE LABORATORIO_02
-------------------------------------------------------------------------------------
CREATE TABLE TB_FUNCIONARIOS(

	matricula_func int NOT NULL PRIMARY KEY,
	nome_fun varchar(50) NOT NULL,
	CPF_fun varchar(20) NOT NULL,
	data_dem_fun datetime NOT NULL,
)
-------------------------------------------------------------------------------------
CREATE TABLE TB_PRODUTO(
	cd_produto int NOT NULL PRIMARY KEY, --- Codigo
	ds_produto varchar(50) NOT NULL, --- Descrição
	categoria_produto varchar(20) NOT NULL,
	valor_atual float NOT NULL,
)
------------------------------------------------------------------------------------
CREATE TABLE TB_VENDAS(
	matricula_vendas int NOT NULL PRIMARY KEY,
	cd_produto_vendas int NOT NULL,
	quantidade_vendas int NOT NULL,
	valor_monetario numeric NOT NULL,
	data_venda datetime NOT NULL,	
)
DROP TABLE TB_VENDAS
DROP TABLE TB_PRODUTO
-----------------------------------------------------------------------------------
--- INSERIR 3 FUNCIONARIO
INSERT INTO TB_FUNCIONARIOS(matricula_func, nome_fun, CPF_fun, data_dem_fun)
VALUES (1,'Wagner Prata','0333','20200226')

INSERT INTO TB_FUNCIONARIOS(matricula_func, nome_fun, CPF_fun, data_dem_fun)
VALUES (2,'Gilton Carvalho','0334','20200227')

INSERT INTO TB_FUNCIONARIOS(matricula_func, nome_fun, CPF_fun, data_dem_fun)
VALUES (3,'Rafael Silveira','0335','20200227')

----------------------------------------------------------------------------------
--- INSERIR 4 PRODUTOS
INSERT INTO TB_PRODUTO(cd_produto,ds_produto,categoria_produto, valor_atual)
VALUES (001,'Arroz parborizado - Dalon', 'Alimento', 3.99 )

INSERT INTO TB_PRODUTO(cd_produto,ds_produto,categoria_produto, valor_atual)
VALUES (002,'Leite Condensado', 'Alimento', 2.79 )

INSERT INTO TB_PRODUTO(cd_produto,ds_produto,categoria_produto, valor_atual)
VALUES (003,'Macarrão -Zazon', 'Alimento', 4.09 )

INSERT INTO TB_PRODUTO(cd_produto,ds_produto,categoria_produto, valor_atual)
VALUES (004,'Água Sanitária', 'Limpeza', 6.50 )

---------------------------------------------------------------------------------
--INSERIR 2 VENDA
INSERT INTO TB_VENDAS (matricula_vendas, cd_produto_vendas, quantidade_vendas, valor_monetario, data_venda)
VALUES (1,233,500, 2000.55,'20191205')

INSERT INTO TB_VENDAS (matricula_vendas, cd_produto_vendas, quantidade_vendas, valor_monetario, data_venda)
VALUES (2,243,300, 2060.55,'20071205')

---------------------------------------------------------------------------------
SELECT *FROM TB_FUNCIONARIOS
SELECT *FROM TB_PRODUTO
SELECT *FROM TB_VENDAS 

--SELECIONA ALGMAS COLUNAS DA TABELA 
SELECT matricula_func,nome_fun,data_dem_fun as Registro_Funcionario FROM TB_FUNCIONARIOS

--SELECIONA MAIOR IGUAL DE COLUNA TABLELA
SELECT *FROM TB_FUNCIONARIOS WHERE data_dem_fun <= '20200226'

--SELECIONA A COLUNA DA TABELA E FAZ A DISTINÇÃO PARA NÃO REPETIR
SELECT DISTINCT categoria_produto FROM TB_PRODUTO

---SELECIONA NA TABELA PRODUTOS QUE TENHA DESCRIÇÃO 
SELECT *FROM TB_PRODUTO WHERE ds_produto LIKE '%Águ%'

---SELECIONA TABELA EM ORDEM DECRESCENTE
SELECT *FROM TB_VENDAS ORDER BY data_venda DESC 




