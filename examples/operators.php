<?php // php -d zend.assertions=1 operators.php

$a = '1';
$b = 1;

assert($a == $b);
assert($a !== $b);
assert($a === '1');
assert($b === 1);
