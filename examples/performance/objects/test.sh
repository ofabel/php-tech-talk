#!/usr/bin/env bash

/usr/bin/time --format='C\t%E' ./objects > /dev/null
/usr/bin/time --format='C++\t%E' ./objects++ > /dev/null
/usr/bin/time --format='Dotnet\t%E' dotnet run > /dev/null
/usr/bin/time --format='Go\t%E' go run ./objects.go > /dev/null
/usr/bin/time --format='Java\t%E' java Objects.java > /dev/null
/usr/bin/time --format='Node\t%E' node ./objects.js > /dev/null
/usr/bin/time --format='Perl\t%E' perl ./objects.pl > /dev/null
/usr/bin/time --format='PHP\t%E' php -d opcache.enable_cli=1 ./objects.php > /dev/null
/usr/bin/time --format='Python\t%E' python ./objects.py > /dev/null

echo 'pypy3.9-7.3.10'>.python-version

/usr/bin/time --format='PyPy\t%E' pypy ./objects.py > /dev/null

rm .python-version

/usr/bin/time --format='Ruby\t%E' ruby ./objects.rb > /dev/null
