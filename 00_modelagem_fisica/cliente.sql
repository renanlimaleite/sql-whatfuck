/* CRIANDO DATABASE */

CREATE DATABASE projeto;

/* entrando na database */
-> mysql = USE projeto;
-> psql = \c projeto

/* criando tabela cliente */
CREATE TABLE CLIENTE (
  NOME VARCHAR(30),
  SEXO CHAR(1),
  EMAIL VARCHAR(30),
  CPF INTEGER, /* INT(11) MYSQL */ 
  TELEFONE VARCHAR(30),
  ENDERECO VARCHAR(100)
);

/* mostrar tabelas */
-> mysql = SHOW TABLES;
-> psql = \dt ou \dt+;

/* mostrar estrutura da tabela */
-> mysql = DESC cliente;
-> psql = \d cliente;

/* 1) FUNCIONA PRECISA SABER A ORDEM CERTA (RUIM)*/
INSERT INTO CLIENTE VALUES ('OSCAR', 'M', 'OSCAR@GMAIL.COM', 123456, '21968701055', 'OSCAR CURY - RJ');

/* 2) INSERINDO COM NOME (BOM - MAIS LEGIVEL) */
INSERT INTO CLIENTE (NOME, SEXO, EMAIL, CPF, TELEFONE, ENDERECO) 
VALUES ('PEDRO 3', 'M', NULL, 2147483647, '21968701055', 'MAIA LACERDA ESTACIO - RJ');

INSERT INTO CLIENTE (NOME, SEXO, EMAIL, CPF, TELEFONE, ENDERECO) 
VALUES ('MARIA', 'F', 'MARIA@GMAIL.COM', 987654, '21968701055', 'MAIA LACERDA ESTACIO - RJ');

/* 3) INSERT COMPACTO, SO FUNFA NO MYSQL */
INSERT INTO CLIENTE VALUES ('JOÃO', 'M', 'JOAO@GMAIL.COM', 02415393231, '21968701055', 'MAIA LACERDA ESTACIO - RJ'),
  ('ANA', 'F', 'ANA@GMAIL.COM', 123456, '21968701055', 'MAIA LACERDA ESTACIO - RJ');;