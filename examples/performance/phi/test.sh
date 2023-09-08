#!/usr/bin/env bash

versions=('5.3' '5.4' '5.5' '5.6' '7.0' '7.1' '7.2' '7.3' '7.4' '8.0' '8.1' '8.2')

for version in "${versions[@]}"; do
  docker run -d --rm --name "phi-php-${version}" -p'8080:8080' -v "$PWD":/app -w /app "php-${version}" php -d opcache.enable_cli=1 -d memory_limit=-1 -d opcache.jit_buffer_size=32M -S 0.0.0.0:8080 -q -t . > /dev/null
  docker stop "phi-php-${version}"
done
