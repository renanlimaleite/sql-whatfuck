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