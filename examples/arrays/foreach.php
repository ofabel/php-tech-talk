<!-- @formatter:off --><?php global $values; include_once 'usage.php';
foreach ($values as $key => $value) {
    echo $key . ' => ' . $value;
}

// one => 1
// two => 2
// three => 3
// 0 => 4
// five => 5

[$first, $second] = array_values($values);
