<?php // php -d zend.assertions=1 trueish-falseish.php
assert('' == false);
assert('0' == false);
assert(0 == false);
assert(null == false);
assert([] == false);

assert(' ' == true);
assert('00' == true);
assert(1 == true);
assert([''] == true);
