

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

##### Permissions path
```bash
chmod -R u+w laravel
chmod -R u+w vue
```

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

#### Check logs
```bash
docker logs -f laravel_que
```


## Laravel Pulse
- First register user in http://localhost:8080/register
- http://localhost:8080/pulse

## Mongodb

## Postgres

## Redis

- Example http://localhost:8080/redis

```php
use Illuminate\Support\Facades\Redis;

 $expiration = 60;

// Data to be stored
$data = [
    'key1' => 'value1',
    'key2' => 'value2',
    'key3' => 'value3',
];

Redis::mset($data);

// Set time expiration
foreach ($data as $key => $value) {
    Redis::expire($key, $expiration);
}

// Get value
Redis::get('key1');

```

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

## Elastic Kibana

- http://localhost:5601/

## Mailhog
- View mails http://localhost:8025/
- Emulate example mail http://localhost:8080/mailhog
- Change this to .env file
  ```env
  MAIL_MAILER=smtp
  MAIL_HOST=mailhog
  MAIL_PORT=1025
  MAIL_USERNAME=null
  MAIL_PASSWORD=null
  MAIL_ENCRYPTION=null
  ```

## Mailcatcher
- View mails http://localhost:1080/
- Change this to .env file
  ```env
  MAIL_MAILER=smtp
  MAIL_HOST=mailcatcher
  MAIL_PORT=1025
  MAIL_USERNAME=null
  MAIL_PASSWORD=null
  MAIL_ENCRYPTION=null
  ```

## Vue with Vite

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

