<?php
$numbers = [1, 2, 3, 4, 5];

$cubes = array_map(fn(int $x) => $x * $x * $x, $numbers);
echo implode(', ', $cubes); // 1, 8, 27, 64, 125

$evens = array_filter($cubes, fn(int $x) => $x % 2 === 0);
echo implode(', ', $evens); // 8, 64

$sum = array_reduce($cubes, fn(?int $s, int $x) => ($s ?? 0) + $x);
echo $sum; // 225

