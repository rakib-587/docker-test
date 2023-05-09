FROM php:8.2-apache

RUN apt update \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer