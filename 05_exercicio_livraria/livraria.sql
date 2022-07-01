CREATE DATABASE livraria;

\c livraria;

CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INTEGER,
	EDITORA VARCHAR(30),
	VALOR FLOAT(10),
	UF CHAR(2),
	ANO INTEGER
);

/* 1 – Trazer todos os dados. */
SELECT * 
FROM
livros;

/*
2 – Trazer o nome do livro e o nome da editora
*/
SELECT LIVRO, EDITORA
FROM livros;

/*
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
*/

SELECT LIVRO, UF
FROM livros
WHERE SEXO = 'M';

/*
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
*/

SELECT LIVRO, PAGINAS
FROM livros
WHERE SEXO = 'F';

/*
5 – Trazer os valores dos livros das editoras de São Paulo.
*/
SELECT * FROM LIVROS
WHERE UF = 'SP';

/*
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
*/
SELECT * FROM LIVROS
WHERE SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');