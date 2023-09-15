ARG VERSION=5.6

FROM php:${VERSION}-apache

RUN docker-php-ext-install opcache

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY 99-custom.conf $PHP_INI_DIR/conf.d/99-custom.ini

ARG OPCACHE=1
ARG JIT=1

RUN test ${OPCACHE} -eq 0 && echo 'opcache.enable=0' >> $PHP_INI_DIR/conf.d/99-custom.ini || exit 0
RUN test ${JIT} -eq 0 && echo 'opcache.jit=disable' >> $PHP_INI_DIR/conf.d/99-custom.ini || exit 0
