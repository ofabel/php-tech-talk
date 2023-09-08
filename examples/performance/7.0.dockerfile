FROM php:7.0-cli

RUN docker-php-ext-install opcache
