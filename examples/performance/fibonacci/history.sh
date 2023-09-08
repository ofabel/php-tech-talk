#!/usr/bin/env bash

versions=('5.3' '5.4' '5.5' '5.6' '7.0' '7.1' '7.2' '7.3' '7.4' '8.0' '8.1' '8.2')

for version in "${versions[@]}"; do
  /usr/bin/time --format="\t${version}\t%E" docker run -it --rm --name "fibonacci-php-${version}" -v "$PWD":/app -w /app "php-${version}" bash -c 'php -d opcache.enable_cli=1 -d opcache.jit_buffer_size=32M -d memory_limit=-1 fibonacci.php > /dev/null'
done
