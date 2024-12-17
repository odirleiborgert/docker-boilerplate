

## Docker Boilerplate

- Laravel
  - Task
  - Queue
- Postgres 13
- Mysql
- Phpmyadmin
- Redis
- ElasticSearch 8.5
- Mailhog

---------------------------------------------

##### Build
> docker-compose up -d --build

- Permission CMD
> sudo chmod 777 -R postgresql

---------------------------------------------

### Laravel

- Install
> docker exec -it app composer create-project laravel/laravel laravel

- Copy .env file
>  docker exec -it app cp .env.example .env

- Key Generate
> docker exec -it app php artisan key:generate

### Laravel Task

### Laravel Queue

### Mongodb

### Postgres

### Redis

### Mysql

### Phpmyadmin
- http://localhost:8081/
- user: root
- password: password

### ElasticSearch

- Elasticvue
  - Extension for ElasticSearch
  - https://chromewebstore.google.com/detail/elasticvue/hkedbapjpblbodpgbajblpnlpenaebaa


### Mailhog
- http://localhost:8025/
- https://github.com/mailhog/MailHog
- Change this to .env file

```env
MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
```


## TODO
- Healthchecks.io
- Inspector.dev
- Sentry or Bugsnag
- Kafka or Rabbitmq
- Portainer
- Laravel Warden
- Laravel Reverb
- Laravel Telescope
- Vue
- React
- React Native


-  https://github.com/docker/awesome-compose
