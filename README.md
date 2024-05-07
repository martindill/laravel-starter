# Criação de container de desenvolvimento Laravel

O projeto possui os seguintes containers configurados:
- NGINX
- PHP
- MySQL
- Composer
- Artisan
- Node

# Setup - iniciando novo projeto

1. Criar projeto laravel utilizando o container composer

> docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

Os arquivos do projeto laravel serão criados dentro da pasta src/

A pasta preferencialmente deve estar dentro do WSL.

Rodar comando abaixo para dar permissão de edição dos arquivos criados na pasta.

> sudo chmod -R 777 ./src

2. Verificar qual é a conexão padrão do laravel (sqlite normalmente)

Alterar para dados de conexão conforme arquivo env/mysql.env

3. Rodar comando artisan migrate utilizando o container

> docker-compose run --rm artisan migrate

4. Subir containers para ver sistema funcionando em http://localhost:8000

> docker-compose up -d --build server

5. Para finalizar os containers

> docker-compose down