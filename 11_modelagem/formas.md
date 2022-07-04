# PRIMEIRA FORMA NORMAL

## 1 regra
- Todo campo vetorizado se tornará outra tabela.
- Ex: 
  - Cores -> [Amarelo, Azul, Laranja]
  - Carros -> [Honda, Fiat, Chevrolet]

## 2 regra
- Todo campo multivalorado se tornará outra tabela
  quando o campo for divisível.
- Ex: 
  - Endereço -> Maria Lacerda (Rua) - Estacio (Bairro) - Rio de Janeiro (Cidade) - RJ (Estado)
                                          

## 3 regra
- Toda tabela necessita de pelo menos um campo que indentifique todo o registro como sendo único
  (Chave primaria - PK)

## RELACIONAMENTO
- 1 X 1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA - cliente x (endereco)
- 1 X N A CHAVE ESTRANGEIRA FICA NA TABELA N (CARDINALIDADE N) - cliente x (telefone)



