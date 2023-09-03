<?php
$twos = range(2, 20, 2);
$threes = range(3, 30, 3);

$diffs = array_diff($twos, $threes);
echo implode(', ', $diffs); // 2, 4, 8, 10, 14, 16, 20

$overlaps = array_intersect($twos, $threes);
echo implode(', ', $overlaps); // 6, 12, 18
