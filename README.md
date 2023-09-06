# Simple Book Store

git clone https://github.com/matheusmendescosta/bookstore.git

cd bookstore

bundle install 

caso voce estiver usando macOs rode o comando para saber o socket do seu mysql netstat -ln | grep mysql a saida sera algo como /tmp/mysql.sock

com essa informação mude no arquivo database.yml altere a linha 18 com o socket do seu mysql EX: socket: /tmp/mysql.sock

crie um arquivo .env e coloque as credencias do seu banco de dados DB_USERNAME=username DB_PASSWORD=password

rails db:create

rails db:migrate

rails db:seed

# Book Store Models

<img src="./public/bookstore_models.png">