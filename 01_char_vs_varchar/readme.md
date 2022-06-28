## Diferenças CHAR E VARCHAR

## char(10)
Não varia, normalmente é  **mais performático**, utiliza-se quando o número de caracteres da coluna nunca for variante:

Exemplo: Char(1) pra armazenar SEXO = M ou F
Exemplo: Char(2) pra armazenar ESTADOS = M ou F

## varchar(10)
Varia, se criarmos um campo como varchar(10) e colocarmos um dado por exemplo "renan", ele ocupará 5 bytes 
epois de armazenado.