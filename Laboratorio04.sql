CREATE DATABASE LABORATORIO_04
--- USANDO BANCO DE DADOS ESPECIFICO - LABORATORIO 03
USE LABORATORIO_04
-------------------------------------------------------------------------
CREATE TABLE TB_ALUNO(
	nome_aluno varchar(50) NOT NULL,
	matricula_aluno int NOT NULL PRIMARY KEY,
	CPF_aluno varchar(20) NOT NULL,
	telefone_aluno varchar(30),
	COD_turma int NOT NULL,
)
-------------------------------------------------------------------------
CREATE TABLE TB_PROFESSOR(
	nome_prof varchar(50) NOT NULL,
	matricula_prof int NOT NULL PRIMARY KEY,
	CPF_prof varchar(20) NOT NULL,
	telefone_prof varchar(30),
	COD_turma int NOT NULL,
)
-------------------------------------------------------------------------
CREATE TABLE TB_TURMA(
	COD_turma int NOT NULL PRIMARY KEY,
	nome_turma varchar(50) NOT NULL,
	turno_turma varchar(50) NOT NULL,
)

)
-------------------------------------------------------------------------
DROP TABLE TB_PROFESSOR
DROP TABLE TB_ALUNO
DROP TABLE TB_TURMA 
-------------------------------------------------------------------------
INSERT TB_ALUNO (matricula_aluno,nome_aluno, CPF_aluno, telefone_aluno,COD_turma) VALUES (1001,'Wagner','001',DEFAULT,201922)
INSERT TB_ALUNO (matricula_aluno,nome_aluno, CPF_aluno, telefone_aluno,COD_turma) VALUES (1002,'José','010','435325',201942)
INSERT TB_ALUNO (matricula_aluno,nome_aluno, CPF_aluno, telefone_aluno,COD_turma) VALUES (1003,'Maria','108','3567665',201972)
-------------------------------------------------------------------------
INSERT TB_PROFESSOR (matricula_prof,nome_prof, CPF_prof, telefone_prof,COD_turma) VALUES (2201,'Eraldo','999','445665',201922)
INSERT TB_PROFESSOR (matricula_prof,nome_prof, CPF_prof, telefone_prof,COD_turma) VALUES (2299,'Mariele','879','145665', 201972)
INSERT TB_PROFESSOR (matricula_prof,nome_prof, CPF_prof, telefone_prof,COD_turma) VALUES (2399,'Estevão','879','145665', 201992)
INSERT TB_PROFESSOR (matricula_prof,nome_prof, CPF_prof, telefone_prof,COD_turma) VALUES (5402,'Claudia','119','15765', 201942)
-------------------------------------------------------------------------
INSERT TB_TURMA (COD_turma,nome_turma,turno_turma) VALUES (201922,'Programação I','Matutino')
INSERT TB_TURMA (COD_turma,nome_turma,turno_turma) VALUES (201942,'Logica de Programação','Matutino')
INSERT TB_TURMA (COD_turma,nome_turma,turno_turma) VALUES (201992,'Calculo I','Noturno')
INSERT TB_TURMA (COD_turma,nome_turma,turno_turma) VALUES (201972,'Probabilidade','verpertino')

SELECT *FROM TB_ALUNO 
SELECT *FROM TB_PROFESSOR
SELECT *FROM TB_TURMA 
-------------------------------------------------------------------------

SELECT  A.nome_turma,B.nome_prof
		FROM TB_TURMA A INNER JOIN TB_PROFESSOR B ON(A.COD_turma = B.COD_turma)

SELECT  A.nome_aluno as Nome_Aluno, B.nome_turma as Nome_Turma
		FROM TB_ALUNO A INNER JOIN TB_TURMA B ON (A.COD_turma = B.COD_turma)
		
SELECT   A.nome_aluno as Nome_Aluno, B.nome_prof as Professor
		FROM TB_ALUNO A INNER JOIN TB_PROFESSOR B ON (A.COD_turma = B.COD_turma)

SELECT A.matricula_prof, A.nome_prof, B.nome_turma
	   FROM TB_PROFESSOR A INNER JOIN TB_TURMA B ON (A.COD_turma = B.COD_turma)
	   
SELECT A.nome_aluno, B.nome_turma 
	   FROM TB_ALUNO A INNER JOIN TB_TURMA B ON (A.COD_turma = B.COD_turma) ORDER BY nome_aluno














