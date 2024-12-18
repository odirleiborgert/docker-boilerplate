FROM php:8.3-fpm

# Instala pacotes necessários
RUN apt-get update -y && \
    apt-get install -y \
    openssl \
    zip \
    unzip \
    git \
    libpq-dev \
    libonig-dev \
    libzip-dev \
    mariadb-client

# Instala extensões PHP necessárias para MySQL e PostgreSQL
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql mbstring zip

# Instala o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Definir o diretório de trabalho dentro do container
WORKDIR /var/www/html

# Expõe a porta 8000
EXPOSE 9000
