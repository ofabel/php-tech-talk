FROM php:7.2-cli

RUN docker-php-ext-install opcache
