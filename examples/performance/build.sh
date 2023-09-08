#!/usr/bin/env bash

versions=('5.3' '5.4' '5.5' '5.6' '7.0' '7.1' '7.2' '7.3' '7.4' '8.0' '8.1' '8.2')

for version in "${versions[@]}"; do
  docker build -t "php-${version}:latest" -f "./${version}.dockerfile" .
done
