#!/usr/bin/env bash

/usr/bin/time --format='C\t%E' ./fibonacci > /dev/null
/usr/bin/time --format='C++\t%E' ./fibonacci++ > /dev/null
/usr/bin/time --format='Dotnet\t%E' dotnet run > /dev/null
/usr/bin/time --format='Go\t%E' go run ./fibonacci.go > /dev/null
/usr/bin/time --format='Java\t%E' java Fibonacci.java > /dev/null
/usr/bin/time --format='Node\t%E' node ./fibonacci.js > /dev/null
/usr/bin/time --format='Perl\t%E' perl ./fibonacci.pl > /dev/null
/usr/bin/time --format='PHP\t%E' php -d opcache.enable_cli=1 -d opcache.jit_buffer_size=32M ./fibonacci.php > /dev/null
/usr/bin/time --format='Python\t%E' python ./fibonacci.py > /dev/null

echo 'pypy3.9-7.3.10'>.python-version

/usr/bin/time --format='PyPy\t%E' pypy ./fibonacci.py > /dev/null

rm .python-version

/usr/bin/time --format='Ruby\t%E' ruby ./fibonacci.rb > /dev/null
