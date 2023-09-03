const SIZE = 1_000_000;
const primes = [2, 3];

let n = 5;
let i = 2;
let j = 1;
let limit = Math.pow(n, 0.5);

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

        console.log(n);
    }

    n += 2;
    limit = Math.pow(n, 0.5);
}
