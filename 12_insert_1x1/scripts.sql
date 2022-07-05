USE COMERCIO; -- MYSQL

\c comercio; -- PSQL

SELECT * FROM cliente;

 id_cliente | nome  | sexo |      email      |      cpf       
------------+-------+------+-----------------+----------------
          1 | Renan | M    | renan@gmail.com | 02415393231
          2 | João  | M    | joão@gmail.com  | 024.153.932-31
          3 | Ana   | F    |                 | 123456789
          4 | Clara | F    | clara@gmail.com | 7894569162
          5 | Celia | F    | celia@gmail.com | 00012345678

-- ENDERECO
INSERT INTO endereco VALUES(DEFAULT, 'Leopoldo', 'Andarai', 'Rio de Janeiro', 'RJ', 1); -- cliente 1
INSERT INTO endereco VALUES(DEFAULT, 'Rua Capitão Ermes', 'Centro', 'Rio de Janeiro', 'RJ', 2);
INSERT INTO endereco VALUES(DEFAULT, 'Jardins', 'Centro', 'São Paulo', 'SP', 3);
INSERT INTO endereco VALUES(DEFAULT, 'Augusta', 'Augusta', 'São Paulo', 'SP', 4);
INSERT INTO endereco VALUES(DEFAULT, 'Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', 5);

INSERT INTO endereco VALUES(DEFAULT, 'Conde de Bonfim 2', 'Tijuca 2', 'Rio de Janeiro', 'RJ', 5); -- é pra dar erro 1

 id_endereco |        rua        | bairro  |     cidade     | estado | id_cliente 
-------------+-------------------+---------+----------------+--------+------------
           1 | Leopoldo          | Andarai | Rio de Janeiro | RJ     |          1
           3 | Rua Capitão Ermes | Centro  | Rio de Janeiro | RJ     |          2
           4 | Jardins           | Centro  | São Paulo      | SP     |          3
           5 | Augusta           | Augusta | São Paulo      | SP     |          4
           6 | Conde de Bonfim   | Tijuca  | Rio de Janeiro | RJ     |          5





