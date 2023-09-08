FROM php:8.0-cli

RUN docker-php-ext-install opcache
