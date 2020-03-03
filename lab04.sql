-- Lab04

CREATE DATABASE lab04

use lab04


a.	Selecione as turmas e seus professores.

SELECT T.COD_TURMA, T.NM_TURMA, 
       P.MATRICULA_PROFESSOR, P.NM_PROFESSOR
FROM TB_TURMA T INNER JOIN TB_PROFESSOR P
     ON (T.MATRICULA_PROFESSOR = P.MATRICULA_PROFESSOR)


b.	Selecione os alunos matriculados e 
    as turmas em que estão matriculados.
    
SELECT A.MATRICULA, A.NOME, T.COD_TURMA, T.NM_TURMA
FROM TB_ALUNO A INNER JOIN TB_ALUNOS_TURMA AT
    ON (A.MATRICULA = AT.MATRICULA)  
    INNER JOIN TB_TURMA T
    ON (AT.COD_TURMA = T.COD_TURMA) 
        
    
c.	Selecione os alunos matriculados e 
    o nome de seus professores.
    
SELECT A.MATRICULA, A.NOME,  
       P.MATRICULA_PROFESSOR, P.NM_PROFESSOR
FROM TB_ALUNO A  INNER JOIN TB_ALUNOS_TURMA AT
     ON (A.MATRICULA = AT.MATRICULA)
     INNER JOIN TB_TURMA T
     ON (AT.COD_TURMA = T.COD_TURMA)  
     INNER JOIN TB_PROFESSOR P
     ON (T.MATRICULA_PROFESSOR = P.MATRICULA_PROFESSOR)
           
    
d.	Selecione todos os professores e, 
    quando existir, as turmas nas 
    quais ensinam.
    
SELECT P.MATRICULA_PROFESSOR, P.NM_PROFESSOR,
       T.COD_TURMA, T.NM_TURMA
FROM TB_PROFESSOR P  LEFT OUTER JOIN TB_TURMA T
    ON (P.MATRICULA_PROFESSOR = T.MATRICULA_PROFESSOR)
                   
    
e.	Selecione todos os alunos e, 
    quando existir, as turmas em que 
    estão matriculados. 
    Ordene o resultado pelo Nome do Aluno
    
SELECT A.MATRICULA, A.NOME, T.COD_TURMA, T.NM_TURMA
FROM TB_ALUNO A LEFT OUTER JOIN TB_ALUNOS_TURMA AT
    ON (A.MATRICULA = AT.MATRICULA)  
    LEFT OUTER JOIN TB_TURMA T
    ON (AT.COD_TURMA = T.COD_TURMA) 
ORDER BY A.NOME    