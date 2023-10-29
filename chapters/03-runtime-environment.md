# Runtime Environment

## How PHP is executed

* Scripts are executed in "one-shot".
* **Memory is volatile per HTTP request.**
* Various options available to make computed values durable:
    * `$_SESSION` variable - HTTP user session support.
    * APCu - an in-memory key-value store.
    * Various modules for third party solutions, e.g. Memcached.

## Running PHP is Easy

1. On the local computer in the terminal:\newline
   `php script.php`

2. On the local computer using the builtin development web server:\newline
   `php -S 127.0.0.1:8080 -t . router.php`

3. On a web server, using the LAMP\footnotemark[1] stack:\newline
   `GET /script.php`

\footnotetext[1]{\textbf{L}inux \textbf{A}pache \textbf{M}ySQL \textbf{P}HP}

## Hosting a PHP Application

1. Apache with `mod_php`: The most simple solution.
    * Limited to one user, group and thread.
    * Limited to Apache web server.
    * Suitable for a small website with few visitors.
    * Setup is easy.
2. PHP-FPM with FastCGI: The most performant solution.
    * One user and group per FPM worker.
    * Multithreading support.
    * Suitable for shared hostings and websites with many concurrent visitors.
    * Can be resource hungry.
3. Using a custom CGI script: The most customizable solution.
    * One user and group per CGI process.
    * Suitable, if you need to intercept between web server and script execution.
    * Setup might be challenging.

## Options to Tweak PHP

Runtime environment and behaviour:

* Adjust `memory_limit` (default is `128M`)
* Adjust `max_execution_time` (default is `30` seconds)
* Adjust `display_errors` (default is `On`)

Performance recommendations:

* Increase `realpath_cache_size` (default is `4M`)
* Enable byte code cache `opcache.enable` (available since version 5.5)
* Increase byte code cache `opcache.memory_consumption`
* Enable JIT compiler `opcache.jit` (since version 8.0)
* Disable assertions `zend.assertions` (default is `On`)
* Disable debugger (it's mandatory to unload the module entirely)
