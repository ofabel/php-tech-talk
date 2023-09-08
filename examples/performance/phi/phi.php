<?php
$primes = include_once 'primes.php';

$temp = $number = isset($_GET['number']) ? $_GET['number'] : 1;
$factors = [];

while ($temp > 1) {
    foreach ($primes as $prime) {
        if ($temp % $prime === 0) {
            $factors[$prime] = isset($factors[$prime]) ? $factors[$prime] + 1 : 1;
            $temp /= $prime;
        }
    }
}

$phi = 1;

foreach ($factors as $factor => $power) {
    $phi *= pow($factor, $power - 1) * ($factor - 1);
}

echo 'φ(' . $number . ') = ' . $phi . PHP_EOL;
