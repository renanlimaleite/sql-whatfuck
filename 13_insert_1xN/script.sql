 
\c comercio; -- PSQL

SELECT * FROM cliente;
 
 
 id_cliente | nome  | sexo |      email      |      cpf       
------------+-------+------+-----------------+----------------
          1 | Renan | M    | renan@gmail.com | 02415393231
          2 | João  | M    | joão@gmail.com  | 024.153.932-31
          3 | Ana   | F    |                 | 123456789
          4 | Clara | F    | clara@gmail.com | 7894569162
          5 | Celia | F    | celia@gmail.com | 00012345678

\d telefone
---
 tipo        | character varying(10) |           | not null | 
 numero      | character varying(10) |           | not null | 
 id_cliente  | integer               |           |          | 
---

INSERT INTO telefone VALUES(DEFAULT, 'CEL', '12345678', 5); 
INSERT INTO telefone VALUES(DEFAULT, 'RES', '87654321', 5);
INSERT INTO telefone VALUES(DEFAULT, 'CEL', '968701055', 1);
INSERT INTO telefone VALUES(DEFAULT, 'RES', '968701055', 3);
INSERT INTO telefone VALUES(DEFAULT, 'CEL', '968701055', 4);

 id_telefone | tipo |  numero   | id_cliente 
-------------+------+-----------+------------
           1 | CEL  | 12345678  |          5
           2 | RES  | 87654321  |          5
           3 | CEL  | 968701055 |          1
           4 | RES  | 968701055 |          3
           5 | CEL  | 968701055 |          4
