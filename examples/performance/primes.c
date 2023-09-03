#include <stdio.h>
#include <math.h>
#include <stdbool.h>

// gcc primes.c -lm -o primes

#define SIZE 1000000

int main()
{
    int known[SIZE] = {2, 3};

    int n = 5;
    int i = 2;
    int j = 1;
    double limit = pow(n, 0.5);

    while (i < SIZE)
    {
        bool isPrime = true;

        for (j = 1; isPrime && known[j] < limit && j < i; j++)
        {
            if (n % known[j] == 0)
            {
                isPrime = false;
            }
        }

        if (isPrime)
        {
            known[i] = n;
            i++;

            printf("%d", n);
        }

        n += 2;
        limit = pow(n, 0.5);
    }

    return 0;
}
