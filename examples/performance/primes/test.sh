#!/usr/bin/env bash

/usr/bin/time --format='C\t%E' ./primes > /dev/null
/usr/bin/time --format='C++\t%E' ./primes++ > /dev/null
/usr/bin/time --format='Dotnet\t%E' dotnet run > /dev/null
/usr/bin/time --format='Go\t%E' go run ./primes.go > /dev/null
/usr/bin/time --format='Java\t%E' java Primes.java > /dev/null
/usr/bin/time --format='Node\t%E' node ./primes.js > /dev/null
/usr/bin/time --format='Perl\t%E' perl ./primes.pl > /dev/null
/usr/bin/time --format='PHP\t%E' php -d opcache.enable_cli=1 -d opcache.jit_buffer_size=32M ./primes.php > /dev/null
/usr/bin/time --format='Python\t%E' python ./primes.py > /dev/null

echo 'pypy3.9-7.3.10'>.python-version

/usr/bin/time --format='PyPy\t%E' pypy ./primes.py > /dev/null

rm .python-version

/usr/bin/time --format='Ruby\t%E' ruby ./primes.rb > /dev/null
