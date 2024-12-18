

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

---------------------------------------------

##### Build
```bash
docker-compose up -d --build
```

```bash
docker exec -it laravel php -v
```

## Laravel

##### Install
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
  - https://chromewebstore.google.com/detail/elasticvue/hkedbapjpblbodpgbajblpnlpenaebaa


## Mailhog
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
