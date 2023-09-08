FROM php:7.4-cli

RUN docker-php-ext-install opcache

WORKDIR /app

COPY . .
