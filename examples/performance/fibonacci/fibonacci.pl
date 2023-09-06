sub fibonacci {
    my $n = shift(@_);

    if ($n < 3) {
        return 1;
    } else {
        return fibonacci($n - 1) + fibonacci($n - 2);
    }
}

fibonacci(40);
