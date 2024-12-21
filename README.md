

## Docker Boilerplate

1. [Laravel](#laravel)
2. [Laravel Task](#laravel-task)
3. [Laravel Queue](#laravel-queue)
4. [Postgres](#postgres)
5. [Mysql](#mysql)
6. [Phpmyadmin](#phpmyadmin)
7. [Redis](#redis)
8. [MongoDB](#mongodb)
9. [ElasticSearch](#elasticsearch)
10. [Mailhog](#mailhog)
11. [Vue with Vite](#vue-with-vite)

---------------------------------------------

##### Build and start the containers
```bash
docker compose up -d --build
```

#### Stop the containers
```bash
docker compose down
```

#### Execute a command in a container
```bash
docker exec -it laravel php -v
```

#### Show the logs
```bash
docker logs -f [container_name]
```

---------------------------------------------

## Laravel

##### Install composer
```bash
docker exec -it laravel composer install
```

##### Copy .env file
```bash
docker exec -it laravel cp .env.example .env
```

##### Key Generate
```bash
docker exec -it laravel php artisan key:generate
```

## Laravel Task

## Laravel Queue

## Mongodb

## Postgres

## Redis

## Mysql

## Phpmyadmin
- http://localhost:8081/
- user: root
- password: root

## ElasticSearch

- Elasticvue
  - Extension for ElasticSearch
  - Install from https://chromewebstore.google.com/detail/elasticvue/hkedbapjpblbodpgbajblpnlpenaebaa


## Mailhog
- http://localhost:8025/
- Documentation https://github.com/mailhog/MailHog
- Change this to .env file
  ```env
  MAIL_MAILER=smtp
  MAIL_HOST=mailhog
  MAIL_PORT=1025
  MAIL_USERNAME=null
  MAIL_PASSWORD=null
  MAIL_ENCRYPTION=null
  ```
  
## Vue

#### Create a new project
```bash
docker exec -it vue npm create vite@latest ./ --template vue
```

```bash
docker exec -it vue npm install
```

-  http://localhost:5173

## TODO
- Kafka or Rabbitmq
- Laravel Warden
- Laravel Reverb
- Laravel Telescope
- React
- React Native

