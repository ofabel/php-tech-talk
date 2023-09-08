FROM php:8.2-cli

RUN docker-php-ext-install opcache

WORKDIR /app

COPY . .
