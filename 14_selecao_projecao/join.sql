\c comercio;

-- ABOUT JOINS


-- CLIENTE
SELECT NOME, EMAIL, ID_CLIENTE FROM CLIENTE;

 nome  |      email      | id_cliente 
-------+-----------------+------------
 Renan | renan@gmail.com |          1
 João  | joão@gmail.com  |          2
 Ana   |                 |          3
 Clara | clara@gmail.com |          4
 Celia | celia@gmail.com |          5



-- ENDERECO
SELECT ID_CLIENTE, BAIRRO, CIDADE FROM ENDERECO;

 id_cliente | bairro  |     cidade     
------------+---------+----------------
          1 | Andarai | Rio de Janeiro
          2 | Centro  | Rio de Janeiro
          3 | Centro  | São Paulo
          4 | Augusta | São Paulo
          5 | Tijuca  | Rio de Janeiro

/* NOME, SEXO, BAIRRO, CIDADE */
-- 1º IDENTIFICAR PROJEÇÃO


-- FUNCIONA, PORÉM É ❌ ERRADO, NÃO FAÇA ASSIM!!
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE
FROM CLIENTE, ENDERECO
WHERE ID_CLIENTE = ID_CLIENTE -- isso sempre é verdade!!
AND SEXO = 'F';


--
/* NOME, SEXO, BAIRRO, CIDADE */
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.ID_CLIENTE = ENDERECO.ID_CLIENTE
WHERE SEXO = 'F';

 nome  | sexo | bairro  |     cidade     
-------+------+---------+----------------
 Ana   | F    | Centro  | São Paulo
 Clara | F    | Augusta | São Paulo
 Celia | F    | Tijuca  | Rio de Janeiro

/* NOME, SEXO, EMAIL, TIPO, NUMERO*/
SELECT CLIENTE.NOME, CLIENTE.SEXO, CLIENTE.EMAIL, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
  INNER JOIN TELEFONE
  ON CLIENTE.ID_CLIENTE = TELEFONE.ID_CLIENTE;


