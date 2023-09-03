<?php
$value = 42; // assign by value
$reference = &$value; // assign by reference

var_dump($value, $reference); // 42, 42

$reference = 31;

var_dump($value, $reference); // 31, 31

unset($reference);

var_dump($value); // 31
