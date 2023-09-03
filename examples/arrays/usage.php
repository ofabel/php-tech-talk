<?php

$low = [1, 2, 3];
$high = [4, 5, 6];

$all = [...$low, ...$high];

$all[] = 7;
$all[] = 8;

echo $all[0];
