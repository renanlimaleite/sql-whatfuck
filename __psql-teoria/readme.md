# Comands
- Entrar no docker `docker exec -ti sql-wtf bash`, entrar no psql `psql -U root`
- Listar databases: `\l` psql e `SHOW DATABASES` mysql;
- Conectar na database: `\c <database>` psql e `USE <database>` mysql
- Mostrar tabelas: `\dt or \dt+` psql e `SHOW TABLES;` mysql
- Mostrar estrutura da tabela `\d <tabela>` psql e `DESCT <tabela>` mysql;