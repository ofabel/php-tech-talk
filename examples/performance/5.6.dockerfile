FROM php:5.6-cli

RUN docker-php-ext-install opcache
