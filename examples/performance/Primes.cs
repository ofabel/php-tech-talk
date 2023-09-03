namespace FHNW;

public class SimplePrimes
{
    private const int Size = 1_000_000;
    private static readonly int[] _primes = new int[Size];

    public static void Main()
    {
        _primes[0] = 2;
        _primes[1] = 3;

        var n = 5;
        var i = 2;
        var j = 1;
        var limit = Math.Pow(n, 0.5);

        while (i < Size)
        {
            var isPrime = true;

            for (j = 1; isPrime && _primes[j] < limit && j < i; j++)
            {
                if (n % _primes[j] == 0)
                {
                    isPrime = false;
                }
            }

            if (isPrime)
            {
                _primes[i] = n;
                i++;

		Console.WriteLine(n);
            }

            n += 2;
            limit = Math.Pow(n, 0.5);
        }
    }
}
