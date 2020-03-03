-- Lab03

CREATE DATABASE lab03

use lab03

SELECT db_name()

1. Elabore um script SQL para criar uma tabela com o nome TB_DVD. A tabela deverá
   conter os seguintes atributos: Código; Titulo; Ano de Lançamento; Categoria. Todos os
   atributos são obrigatórios.
   
   drop table tb_dvd
   CREATE TABLE TB_DVD (
      CODIGO INT NOT NULL PRIMARY KEY,
      TITULO VARCHAR(100) NOT NULL,
      ANO_LANCAMENTO INT NOT NULL,
      CATEGORIA VARCHAR(50) NOT NULL
   )
   
   
2. Elabore um script SQL para criar uma tabela com o nome TB_CLIENTE. A tabela
   deverá conter os seguintes atributos: Matricula; Nome; CPF; Telefone; Data de Cadastro.
   Todos os atributos são obrigatórios com exceção do atributo Telefone.
   
   CREATE TABLE TB_CLIENTE (
      MATRICULA INT NOT NULL PRIMARY KEY,
      NOME VARCHAR(50) NOT NULL,
      CPF VARCHAR(20) NOT NULL,
      TELEFONE VARCHAR(15) NULL,
      DATA_CADASTRO DATETIME DEFAULT (GETDATE())
   )
   
3. Elabore scripts SQL para:
   a. Inserir 3 DVDs;
   b. Inserir 2 Clientes com valores para todos os atributos;
   c. Inserir 1 Cliente sem valor para o atributo telefone.
   
   INSERT INTO TB_DVD VALUES (10, 'OS INCRÍVEIS', 2015, 'INFANTIL')
   INSERT INTO TB_DVD VALUES (20, 'E O VENTO LEVOU', 1939, 'DRAMA')
   INSERT INTO TB_DVD VALUES (30, 'O SILÊNCIO DOS INOCENTES', 1991, 'SUSPENSE')
   
   INSERT INTO TB_CLIENTE VALUES (1, 'JOAO', '333333333','99876-9888',DEFAULT)
   INSERT INTO TB_CLIENTE VALUES (2, 'RICARDO', '44444444','99999-1212',DEFAULT)
   INSERT INTO TB_CLIENTE VALUES (3, 'JOANA', '5555555555',NULL ,DEFAULT)
   
    
4. Elabore consultas em SQL que possam executar as seguintes tarefas:
   a. Selecionar todas as informações de todos os DVDs;
      
      SELECT * FROM TB_DVD
      
   b. Selecionar todos os DVDs com Ano de Lançamento igual a 1997;
      
      SELECT * FROM TB_DVD
      WHERE ANO_LANCAMENTO = 1997

   c. Selecionar todos os DVDs com Ano de Lançamento igual a 2005 e Categoria igual
      a SUSPENSE;

      SELECT * FROM TB_DVD
      WHERE ANO_LANCAMENTO = 1991 AND
            CATEGORIA = 'SUSPENSE'
  
   d. Selecionar somente o Código e o Título dos DVDs.
   
      SELECT CODIGO, TITULO
      FROM TB_DVD

5. Elabore consultas em SQL que possam executar as seguintes tarefas:
 
   a. Selecionar todos os Clientes ordenados pelo Nome;

      SELECT * FROM TB_CLIENTE
      ORDER BY NOME
      
   b. Selecionar todos os DVDs ordenados pelo Ano de Lançamento de forma
      decrescente;
   
      SELECT * FROM TB_DVD
      ORDER BY ANO_LANCAMENTO DESC 
      
   c. Selecionar todos os Clientes que possuem telefone;

      SELECT * FROM TB_CLIENTE
      WHERE TELEFONE IS NOT NULL
      
   d. Selecionar todos os DVDs que tenham no seu título a palavra ‘ROCKY’.
   
      SELECT * FROM TB_DVD
      WHERE TITULO LIKE '%ROCKY%'

6. Elabore consultas em SQL que possam executar as seguintes tarefas:

   a. Atualizar o cliente de matricula 2025 e alterar o seu telefone;

      UPDATE TB_CLIENTE
      SET TELEFONE = '84848-8988'
      WHERE MATRICULA = 1

   b. Atualizar todos os DVDs da categoria AVENTURA e modificar a categoria para
      AÇÃO;

      UPDATE TB_DVD
      SET CATEGORIA = 'AÇÃO'
      WHERE CATEGORIA = 'AVENTURA'
   
   c. Remover todos os DVDs de categoria DOCUMENTÁRIO;

      DELETE FROM TB_DVD 
      WHERE CATEGORIA = 'DOCUMENTÁRIO'
   
   d. Remover todos os Clientes que não possuem telefone.
   
      DELETE FROM TB_CLIENTE
      WHERE TELEFONE IS NULL
      
      