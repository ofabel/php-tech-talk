#include <iostream>
#include <math.h>

// g++ primes.cpp -o primes++ -Ofast

using namespace std;

#define SIZE 1000000

int main()
{
    auto known = new uint32_t[SIZE]{2, 3};

    uint32_t n = 5;
    uint32_t i = 2;
    uint32_t j = 1;
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

            cout << n << endl;
        }

        n += 2;
        limit = pow(n, 0.5);
    }

    return 0;
}
