FROM php:7.1-cli

RUN docker-php-ext-install opcache
