FROM php:8.3-fpm

# Atualiza os pacotes e instala dependências necessárias
RUN apt-get update -y && \
    apt-get install -y \
    openssl \
    zip \
    unzip \
    git \
    curl \
    libpq-dev \
    libonig-dev \
    libzip-dev \
    mariadb-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Instala extensões PHP necessárias para MySQL e PostgreSQL
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql mbstring zip

# Instala a extensão phpredis
RUN pecl install redis && docker-php-ext-enable redis

# Instala o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instala o Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g npm@latest

# Define o diretório de trabalho dentro do container
WORKDIR /var/www

# Expõe a porta 9000
EXPOSE 9000