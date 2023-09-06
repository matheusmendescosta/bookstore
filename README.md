[![Github Badge](https://img.shields.io/badge/-Github-000?style=flat-square&logo=Github&logoColor=white&link=https://github.com/matheusmendescosta)](https://github.com/matheusmendescosta)
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/matheusmendescosta/)](https://www.linkedin.com/in/matheusmendescosta/)
[![Twitter Badge](https://img.shields.io/badge/-Twitter-1ca0f1?style=flat-square&labelColor=1ca0f1&logo=twitter&logoColor=white&link=https://twitter.com/batheusmendes)](https://twitter.com/batheusmendes)

## Simple Book Store

Clonando o projeto

`git clone https://github.com/matheusmendescosta/bookstore.git`

Acessando a pasta do projeto

`cd bookstore`

Instalando dependencias

`bundle install`

Caso voce estiver usando macOs rode o comando para saber o socket do seu mysql

`netstat -ln | grep mysql` 

A saida sera algo como 

`/tmp/mysql.sock`

Com essa informação mude no arquivo `database.yml` alterando a linha 18 com o socket do seu mysql 

`socket: /tmp/mysql.sock`

Para rodar esse projeto, você vai precisar adicionar as seguintes variáveis de ambiente no seu .env

`DB_USERNAME=username`

`DB_PASSWORD=password`

Crie um esquema 

`rails db:create`

Faça a migration

`rails db:migrate`

Rode o seeds

`rails db:seed`

### Book Store Models

<img src="./public/bookstore_models.png">
