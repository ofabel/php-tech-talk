<?php // php -d zend.assertions=1 equality.php
assert('1' == 1);
assert('1' !== 1);
assert('1' === '1');
assert(1 === 1);

assert([] === []);
assert([1, 2] === [1, 2]);
assert(['1', '2'] !== [1, 2]);
assert(['1', '2'] == [1, 2]);

assert(1.0 !== 1);
assert(0.09 + 0.01 !== 0.1);
assert(abs(0.09 + 0.01 - 0.1) < PHP_FLOAT_EPSILON);
