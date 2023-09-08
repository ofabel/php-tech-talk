#!/usr/bin/env bash

versions=('5.6' '7.4' '8.2')

for version in "${versions[@]}"; do
  /usr/bin/time --format="\t${version}\t%E" docker run -it --rm --name "primes-php-${version}" -v "$PWD":/app -w /app "php-${version}" bash -c 'php -d opcache.enable_cli=1 -d memory_limit=-1 -d opcache.jit_buffer_size=32M primes.php > /dev/null'
done
