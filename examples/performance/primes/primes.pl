use constant SIZE => 1_000_000;
my @known = (2, 3);
my $n = 5;
my $i = 2;
my $j = 1;
my $limit = sqrt($n);
while ($i < SIZE) {
    my $isPrime = 1;
    for ($j = 1; $isPrime && $known[$j] < $limit && $j < $i; $j++) {
        if ($n % $known[$j] == 0) {
            $isPrime = 0;
        }
    }
    if ($isPrime) {
        $known[$i] = $n;
        $i++;
        print $n . "\n";
    }
    $n += 2;
    $limit = sqrt($n);
}
