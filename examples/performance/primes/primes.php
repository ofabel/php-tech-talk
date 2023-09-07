<?php // php -d opcache.enable_cli=1 ./primes.php
const SIZE = 1_000_000;

$known = [2, 3];
[$n, $i, $j] = [5, 2, 1];
$limit = pow($n, 0.5);

while ($i < SIZE) {
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
