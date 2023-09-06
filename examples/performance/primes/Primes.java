class Primes {
    private static final int SIZE = 1_000_000;
    private static final int[] primes = new int[SIZE];

    public static void main(String[] args) {
        primes[0] = 2;
        primes[1] = 3;

        var n = 5;
        var i = 2;
        var j = 1;
        var limit = Math.pow(n, 0.5);

        while (i < SIZE)
        {
            var isPrime = true;

            for (j = 1; isPrime && primes[j] < limit && j < i; j++)
            {
                if (n % primes[j] == 0)
                {
                    isPrime = false;
                }
            }

            if (isPrime)
            {
                primes[i] = n;
                i++;

                System.out.println(n);
            }

            n += 2;
            limit = Math.pow(n, 0.5);
        }
    }
}
