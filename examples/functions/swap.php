<?php
function swap(&$left, &$right)
{
    [$left, $right] = [$right, $left];
}

$a = 13;
$b = 42;

swap($a, $b);

echo "$a $b"; // 42 13
