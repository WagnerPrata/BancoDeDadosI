-- Lab 00

CREATE DATABASE lab00

use lab00

1.	Criar uma tabela com o nome TB_CLIENTE. 
A tabela deverá conter a seguinte estrutura:

a.	Um atributo cd_cliente do tipo inteiro
b.	Um atributo nm_cliente do tipo cadeia 
    de caracteres de tamanho 50
c.	Um atributo endereco do tipo cadeia de 
    caracteres de tamanho 60
d.	Um atributo telefone do tipo cadeia de 
    caracteres de tamanho 10
e.	Um atributo rg_cliente do tipo cadeia de 
    caracteres de tamanho 20 (Esse atributo armazena o RG do cliente)
f.	Um atributo dt_catastro do tipo data e hora 
   (Esse atributo armazena a data na qual o cliente foi cadastrado)

Todos os atributos da tabela devem ser obrigatórios 
com exceção do atributo telefone.

CREATE TABLE TB_CLIENTE (
   CD_CLIENTE INT NOT NULL PRIMARY KEY,
   NM_CLIENTE VARCHAR(50) NOT NULL,
   ENDERECO VARCHAR(60)   NOT NULL,
   TELEFONE VARCHAR(10)    NULL,
   RG_CLIENTE VARCHAR(20) NOT NULL,
   DT_CADASTRO DATETIME   NOT NULL,
)


2. Utilize o comando de Inserção da linguagem SQL para:

a.	Inserir dois clientes (códigos 1, 2) 
    com data de cadastro igual a 10/02/2019. 
    Para esses dois clientes todos os atributos devem 
    ser preenchidos.
b.	Inserir dois clientes (códigos 3, 4) 
    com data de cadastro igual a 10/03/2019. Para esses 
    dois clientes todos os atributos devem ser preenchidos.
c.	Inserir um cliente (código 5) 
    com data de registro igual a 15/03/2019. Esse 
    cliente não possui valor para o atributo telefone.
    
INSERT INTO TB_CLIENTE(CD_CLIENTE,
                       NM_CLIENTE,
                       ENDERECO,
                       TELEFONE,
                       RG_CLIENTE,
                       DT_CADASTRO)
                       
VALUES(1,'CARLOS','RUA F','4444441','1111','20190210')

INSERT INTO TB_CLIENTE(CD_CLIENTE,
                       NM_CLIENTE,
                       ENDERECO,
                       TELEFONE,
                       RG_CLIENTE,
                       DT_CADASTRO)
                       
VALUES(2,'JOAO','RUA J','555555','2222','20190210')

INSERT INTO TB_CLIENTE(CD_CLIENTE,
                       NM_CLIENTE,
                       ENDERECO,
                       TELEFONE,
                       RG_CLIENTE,
                       DT_CADASTRO)
                       
VALUES(3,'PATRICIA','RUA P','555555','2222','20190310')

INSERT INTO TB_CLIENTE(CD_CLIENTE,
                       NM_CLIENTE,
                       ENDERECO,
                       TELEFONE,
                       RG_CLIENTE,
                       DT_CADASTRO)
                       
VALUES(4,'JOANA','RUA H','44444','2222','20190310') 

INSERT INTO TB_CLIENTE(CD_CLIENTE,
                       NM_CLIENTE,
                       ENDERECO,
                       TELEFONE,
                       RG_CLIENTE,
                       DT_CADASTRO)
                       
VALUES(5, 'ROBERTO','RUA R',NULL,'2222','20190315')

SELECT * FROM TB_CLIENTE                       
                       
                       

3. Utilize o comando de Seleção da linguagem SQL para:

a.	Selecionar o código, o nome e o RG de todos 
    os clientes.

SELECT CD_CLIENTE, NM_CLIENTE, RG_CLIENTE
FROM TB_CLIENTE

b.	Selecionar os clientes que foram cadastrados 
    antes de 01 de Março de 2019. 

SELECT CD_CLIENTE, NM_CLIENTE, DT_CADASTRO
FROM TB_CLIENTE
WHERE DT_CADASTRO < '20190301'


c.	Selecionar os clientes que não tenham telefone.

SELECT *
FROM TB_CLIENTE
WHERE TELEFONE IS NULL

SELECT *
FROM TB_CLIENTE
WHERE TELEFONE IS NOT NULL



4. Utilize o comando de Atualização da linguagem SQL para:

a.	Atualizar o cliente de código 5 e modificar 
    o seu telefone.
UPDATE TB_CLIENTE
SET TELEFONE = '122-3949'
WHERE CD_CLIENTE = 5    

b.	Atualizar o cliente de código 3 e atualizar 
    o seu endereço e telefone (Utilize um único 
    comando SQL para essa operação).

UPDATE TB_CLIENTE 
SET ENDERECO = 'RUA J',
    TELEFONE = '3939-333'
WHERE CD_CLIENTE = 3


5. Utilize o comando de Remoção da linguagem SQL para:
a.	Remover os clientes de código 2 e 3.

DELETE FROM TB_CLIENTE
WHERE CD_CLIENTE = 2 OR CD_CLIENTE = 3

-- OUTRA SOLUCAO

DELETE FROM TB_CLIENTE 
WHERE CD_CLIENTE IN (2,3)




















