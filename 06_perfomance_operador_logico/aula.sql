\c projeto
\l 

SELECT COUNT(*) 
FROM CLIENTE;

SELECT SEXO, COUNT(*) AS "Quantidade"
FROM CLIENTE
GROUP BY SEXO;

/*
  1 MILHÃO DE REGISTRO

  CONDICAO
  SEXO = F
  CIDADE = RIO DE JANEIRO

  SITUAÇAO (OR) -> SEMPRE O MAIOR NA FRENTE 
  70% SEXO = F
  30% MORA NO RIO DE JANEIRO
  // WHERE SEXO = 'F' OR CIDADE = 'RJ'; /

  SITAÇÃO (AND) -> SEMPRE O MENOR NA FRENTE.
  // WHERE CIDADE = 'RJ' AND SEXO = 'F';
*/