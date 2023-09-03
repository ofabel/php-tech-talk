<?php
$values = [
    'one' => 1,
    'two' => 2,
    'three' => 3
];

$values[] = 4;
$values['five'] = 5;

echo $values[0]; // 4
echo $values['one']; // 1
