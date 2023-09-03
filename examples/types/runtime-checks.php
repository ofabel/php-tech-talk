<?php
function cube(int|float $value)
{
    return $value * $value * $value;
}

cube('42');

// $ php runtime-checks.php
//
// PHP Fatal error:  Uncaught TypeError: cube(): Argument #1 ($value) must be of type int|float
// Stack trace:
// #0 /runtime-checks.php(7): cube()
// #1 {main}
//   thrown in /runtime-checks.php on line 2
