-- Lab02

CREATE DATABASE lab02

use lab02

1. Criar uma tabela com o nome TB_FUNCIONARIO. A tabela deverá conter a seguinte
   estrutura:
     a. Um atributo matricula do tipo inteiro
     b. Um atributo nm_funcionario do tipo cadeia de caracteres de tamanho 50
     c. Um atributo cpf do tipo cadeia de caracteres de tamanho 20 (Esse atributo
        armazena o CPF do funcionário)
     d. Um atributo dt_admissao do tipo data e hora (Esse atributo armazena a data na
        qual o funcionário foi admitido)
   Todos os atributos da tabela devem ser obrigatórios
   

CREATE TABLE TB_FUNCIONARIO (
    MATRICULA INT NOT NULL PRIMARY KEY,
    NM_FUNCIONARIO VARCHAR(50) NOT NULL,
    CPF VARCHAR(20) NOT NULL,
    DT_ADMISSAO DATETIME NOT NULL
)


2. Criar uma tabela com o nome TB_PRODUTO. A tabela deverá conter a seguinte
estrutura:
    a. Um atributo cd_produto do tipo inteiro
    b. Um atributo ds_produto do tipo cadeia de caracteres de tamanho 50 (Esse
       atributo armazena a descrição do produto)
    c. Um atributo categoria do tipo cadeia de caracteres de tamanho 20 (As categorias
       possíveis são: Alimento, Perfumaria, Brinquedos).
    d. Um atributo valor_atual (Esse atributo armazena o valor monetário atual do
       produto)
    Todos os atributos da tabela devem ser obrigatórios.

 CREATE TABLE TB_PRODUTO (
    CD_PRODUTO INT NOT NULL PRIMARY KEY,
    DS_PRODUTO VARCHAR(50) NOT NULL,
    CATEGORIA VARCHAR(20) NOT NULL CHECK (CATEGORIA IN ('Alimento', 'Perfumaria','Brinquedos')),
    VALOR_ATUAL NUMERIC(10,2) NOT NULL
 )
 

3. Criar uma tabela com o nome TB_VENDAS. A tabela deverá conter a seguinte estrutura:
   a. Um atributo matricula do tipo inteiro
   b. Um atributo cd_produto do tipo inteiro
   c. Um atributo quantidade do tipo inteiro
   d. Um atributo valor_unitario (Esse atributo armazena o valor monetário pelo qual
      o produto foi vendido)
   e. Um atributo dt_venda (Esse atributo representa a data e hora na qual o produto
      foi vendido)
   Todos os atributos da tabela devem ser obrigatórios.
   

CREATE TABLE TB_VENDAS (
    MATRICULA INT NOT NULL REFERENCES TB_FUNCIONARIO(MATRICULA),
    CD_PRODUTO INT NOT NULL REFERENCES TB_PRODUTO(CD_PRODUTO),
    QUANTIDADE INT NOT NULL,
    VALOR_UNITARIO NUMERIC(10,2),
    DT_VENDA DATETIME NOT NULL DEFAULT (GETDATE())
 )
 
  
   
4. Utilize o comando de Inserção da linguagem SQL para:
   a. Inserir três funcionários (matrículas 1, 2 e 3)
   
   INSERT INTO TB_FUNCIONARIO VALUES (1, 'JOAO', '4444444444', '20190101'),
   									 (2, 'RICARDO', '33333333333', '20190201'),
   									 (3, 'PATRICIA', '55555555555', '20190301')
   
   
   
   b. Inserir 4 produtos (códigos 1 a 4)
   
   INSERT INTO TB_PRODUTO VALUES (1, 'ARROZ', 'Alimento', 2.00),
                                  (2, 'CAFÉ', 'Alimento', 1.00),
                                  (3, 'BICICLETA', 'Brinquedos', 200.00),
                                  (4, 'Sabonete', 'Perfumaria', 3.00)
                                  
                                 
   
   
   c. Inserir vendas
   
   INSERT INTO TB_VENDAS (MATRICULA, CD_PRODUTO, QUANTIDADE, VALOR_UNITARIO)
   VALUES (1,1, 10, 2.0),
          (1,2, 5, 1.00),
          (2,4, 2, 3.00)





5. Utilize o comando de Seleção da linguagem SQL para:
   a. Selecionar a matrícula, o nome e data de admissão dos funcionários (A coluna
      matrícula deve aparecer como “Registro do Funcionário”.
      
      SELECT MATRICULA AS 'Registro do Funcionário', NM_FUNCIONARIO, DT_ADMISSAO
      FROM TB_FUNCIONARIO
   
    b. Selecionar os funcionários cuja data de admissão é maior ou igual a 01/03/2010
   
       SELECT *
      FROM TB_FUNCIONARIO
      WHERE DT_ADMISSAO >= '20100301'
   
   c. Selecionar as diferentes categorias existentes na Tabela de Produtos
   
      SELECT DISTINCT CATEGORIA FROM TB_PRODUTO 
      
   d. Selecionar os produtos cuja descrição contenha a palavra “chocolate”
      
      SELECT * FROM TB_PRODUTO
      WHERE DS_PRODUTO LIKE '%chocolate%'
      
      
   e. Selecionar todas as vendas ordenadas em ordem decrescente pela data da venda.
   
      SELECT * FROM 
      TB_VENDAS
      ORDER BY DT_VENDA DESC
   
   
   f. Selecionar todas as vendas apresentando o valor total de cada venda (valor
      unitário * quantidade)
      
      SELECT *, VALOR_UNITARIO * QUANTIDADE AS VALOR_TOTAL
      FROM TB_VENDAS
      
   g. Selecionar todas as vendas efetuadas pelos funcionários de matrícula 1 e 2
      (Utilize o operador IN)
      
      SELECT * FROM TB_VENDAS
      WHERE MATRICULA IN (1,2)
      
   h. Selecionar todas as vendas que não foram efetuadas pelo funcionário de
      matrícula 1 (Utilize o operador NOT IN)
      
      SELECT * FROM TB_VENDAS
      WHERE MATRICULA NOT IN (1)
      
      