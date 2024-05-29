FROM php:8.1-fpm

COPY composer.lock composer.json /var/www/

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mariadb-client libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo_mysql