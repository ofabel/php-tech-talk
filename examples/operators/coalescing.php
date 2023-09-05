<?php // php -d zend.assertions=1 coalescing.php
$a = null;
$b = $a ?? 42;

assert($a === null);
assert($b === 42);

$a ??= $b;
$b ??= 31;

assert($a === $b);
assert($b === 42);
