<?php

function fibonacci(int $limit): Generator
{
    for ($i = $p = 0, $n = 1; $i < $limit; $i++, [$p, $n] = [$n, $n + $p]) {
        yield $i => $n;
    }
}

foreach (fibonacci(10) as $index => $value) {
    echo $index . ":\t" . $value . PHP_EOL;
}
