SELECT NOME, ENDERECO 
FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, ENDERECO 
FROM CLIENTE
WHERE SEXO = 'M';


/* EQUAL ==== */
SELECT NOME, SEXO
FROM CLIENTE
WHERE ENDERECO = 'RJ';


/* LIKE = CARACTER CORINGA %%%% */
/* '%RJ' -> TUDO QUE ESTIVER ANTES DE RJ */
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

/* 'OSCAR CURY%' -> TUDO QUE ESTIVER DEPOIS DE OSCAR CURY */
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

/* '%OSCAR CURY%' -> TUDO QUE TIVER ANTES DE CURY E TUDO QUE TERMINAR PÓS CURY */
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE ENDERECO LIKE '%CURY%';
