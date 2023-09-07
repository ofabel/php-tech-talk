<?php
$arr1 = range(0, 100_000_000);
$arr2 = array_map(fn($v) => $v, $arr1);
