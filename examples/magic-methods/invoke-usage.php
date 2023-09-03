<?php include_once 'invoke.php';

$data = [
    ['name' => 'Eve', 'age' => 53],
    ['name' => 'Bob', 'age' => 31],
    ['name' => 'Alice', 'age' => 42]
];

// sort ascending by name
usort($data, new Sort('name'));

// sort ascending by age
usort($data, new Sort('age'));
