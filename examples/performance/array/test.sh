#!/usr/bin/env bash

/usr/bin/time --format='C++\t%E' ./array++ > /dev/null
/usr/bin/time --format='Dotnet\t%E' dotnet run > /dev/null
/usr/bin/time --format='Go\t%E' go run ./array.go > /dev/null
/usr/bin/time --format='Java\t%E' java Array.java > /dev/null
/usr/bin/time --format='Node\t%E' node ./array.js > /dev/null
/usr/bin/time --format='Perl\t%E' perl ./array.pl > /dev/null
/usr/bin/time --format='PHP\t%E' php -d opcache.enable_cli=1 ./array.php > /dev/null
/usr/bin/time --format='Python\t%E' python ./array.py > /dev/null

echo 'pypy3.9-7.3.10'>.python-version

/usr/bin/time --format='PyPy\t%E' pypy ./array.py > /dev/null

rm .python-version

/usr/bin/time --format='Ruby\t%E' ruby ./array.rb > /dev/null
