<?php // php -d opcache.enable_cli=1 -d opcache.jit_buffer_size=32M ./primes.php
$known = array(2, 3);
list($n, $i, $j) = array(5, 2, 1);
$limit = pow($n, 0.5);

while ($i < 1000000) {
    $isPrime = true;

    for ($j = 1; $isPrime && $known[$j] < $limit && $j < $i; $j++) {
        if ($n % $known[$j] == 0) {
            $isPrime = false;
        }
    }

    if ($isPrime) {
        $known[$i] = $n;
        $i++;

        echo($n . PHP_EOL);
    }

    $n += 2;
    $limit = pow($n, 0.5);
}
