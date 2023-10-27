# Runtime Environment

## Running PHP is Easy

1. On the local computer, using the PHP interpreter:

   ```shell
   php script.php
   ```
2. On a web server, using the LAMP\footnotemark[1] stack:

   ```plain
   GET /script.php
   ```

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

## Options to Tweak Performance

* Increase `memory_limit` (default is `128M`)
* Enable byte code cache `opcache.enable` (available since version 5.5)
* Increase byte code cache `opcache.memory_consumption`
* Enable JIT compiler `opcache.jit` (since version 8.0)
* Disable debugger (it's mandatory to unload the module entirely)
