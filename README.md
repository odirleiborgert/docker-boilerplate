

## Docker Boilerplate

1. [Laravel](#laravel)
2. [Laravel Task](#laravel-task)
3. [Laravel Queue](#laravel-queue)
4. [Laravel Pulse](#laravel-pulse)
5. [Postgres](#postgres)
6. [Mysql](#mysql)
7. [Phpmyadmin](#phpmyadmin)
8. [Redis](#redis)
9. [RedisInsight](#redisinsight)
10. [MongoDB](#mongodb)
11. [ElasticSearch](#elasticsearch)
12. [Mailhog](#mailhog)
13. [Vue with Vite](#vue-with-vite)

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

#### Show the logs of a container
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

#### Check logs
```bash
docker logs -f laravel_task
```


#### Permission do artisan
```bash
docker exec -it laravel_task sh
```
```bash
chmod +x /var/www/artisan
```

#### Execute manual
```bash
docker exec -it laravel_task php /var/www/artisan schedule:work
```

## Laravel Queue

## Laravel Pulse
- First register user in http://localhost:8080/register
- http://localhost:8080/pulse

## Mongodb

## Postgres

## Redis

## RedisInsight
- http://localhost:5540
- Host: redis
- Port: 6379
- Username: default
- Password: null

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
  
## Vue with Vite

#### Create a new project
```bash
docker exec -it vue npm create vite@latest ./ --template vue
```

#### Install dependencies
```bash
docker exec -it vue npm install
```

-  http://localhost:5173

<br>
<br>
<br>
<br>

## TODO
- Kafka or Rabbitmq
- Laravel Warden
- Laravel Reverb
- Laravel Telescope
- React
- React Native

