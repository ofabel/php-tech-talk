<?php // php -d opcache.enable_cli=1 fibonacci.php
function fibonacci($n)
{
    return $n < 3 ? 1 : (fibonacci($n - 1) + fibonacci($n - 2));
}

fibonacci(40);
