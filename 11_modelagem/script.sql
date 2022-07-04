-- PRIMEIRO ALGORISMO - OBRIGATORIEDADE
-- ONDE 0 É FALSE E 1 É TRUE

-- (0), 1
-- (0), N
-- (1), 1
-- (1), N

-- SEGUNDO ALGORISMO - CARDINALIDADE
-- ONDE 1 É MAXIMO 1 E N É 0 OU MAIS DE 1

-- 0, (1)
-- 0, (N)
-- 1, (1)
-- 1, (N)

-- QUEM DEFINE A CARDINALIDADE É A REGRA DE NEGÓCIO

CREATE DATABASE COMERCIO;

USE COMERCIO; -- MYSQL

\c comercio; -- PSQL

DROP TABLE CLIENTE;

CREATE TABLE CLIENTE (
  id_cliente SERIAL PRIMARY KEY, -- MYSQL INTEGER PRIMARY KEY AUTO_INCREMENT
  nome VARCHAR(30) NOT NULL,
  sexo CHAR(1) NOT NULL, -- PODERIA TAMBÉM NO MYSQL ENUM('M', 'F')
  email VARCHAR(50) UNIQUE,
  cpf VARCHAR(15) UNIQUE
);

DROP TABLE CLIENTE;



CREATE TABLE ENDERECO (
  id_endereco SERIAL PRIMARY KEY,
  rua VARCHAR(30) NOT NULL,
  bairro VARCHAR(30) NOT NULL,
  cidade VARCHAR(30) NOT NULL,
  estado CHAR(2) NOT NULL,
  id_cliente INTEGER UNIQUE, -- 1 X 1
  FOREIGN KEY(id_cliente)
  REFERENCES cliente(id_cliente)
);

CREATE TABLE TELEFONE (
  id_telefone SERIAL PRIMARY KEY,
  tipo VARCHAR(10) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  id_cliente INTEGER, -- 1XN
  FOREIGN KEY(id_cliente)
  REFERENCES cliente(id_cliente)
);

-- ENDERECO OBRIGATORIO, SOMENTE 1
-- TELEFONE NÃO OBRIGATORIO, 0, 1 OU VÁRIOS

SELECT * FROM CLIENTE;

-- INSERTS
                          -- NULL FUNCIONA NO MYSQL PARA PK
-- INSERT INTO CLIENTE VALUES(NULL, 'João', 'M', 'joão@gmail.com', '024.153.932-31');
INSERT INTO CLIENTE VALUES(DEFAULT, 'João', 'M', 'joão@gmail.com', '024.153.932-31');
INSERT INTO CLIENTE (nome, sexo, email, cpf) VALUES('Renan', 'M', 'renan@gmail.com', '02415393231');

INSERT INTO CLIENTE (nome, sexo, email, cpf) VALUES('Ana', 'F', NULL, '123456789');
INSERT INTO CLIENTE (nome, sexo, email, cpf) VALUES('Clara', 'F', 'clara@gmail.com', '7894569162');
INSERT INTO CLIENTE (nome, sexo, email, cpf) VALUES('Celia', 'F', 'celia@gmail.com', '00012345678');

 id_cliente | nome  | sexo |      email      |      cpf       
------------+-------+------+-----------------+----------------
          1 | Renan | M    | renan@gmail.com | 02415393231
          2 | João  | M    | joão@gmail.com  | 024.153.932-31
          3 | Ana   | F    |                 | 123456789
          4 | Clara | F    | clara@gmail.com | 7894569162
          5 | Celia | F    | celia@gmail.com | 00012345678

