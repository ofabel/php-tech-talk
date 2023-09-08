#!/usr/bin/env bash

docker build -t php-5.6:latest -f ./5.6.dockerfile .
docker build -t php-7.4:latest -f ./7.4.dockerfile .
docker build -t php-8.2:latest -f ./8.2.dockerfile .
