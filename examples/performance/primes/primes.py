SIZE = 1_000_000
primes = [2, 3]

n = 5
i = 2
j = 1
limit = pow(n, 0.5)

while (i < SIZE):
    isPrime = True

    j = 1
    while isPrime and primes[j] < limit and j < i:
        if n % primes[j] == 0:
            isPrime = False
        j += 1

    if isPrime:
        primes.append(n)
        i += 1

        print(n)

    n += 2
    limit = pow(n, 0.5)
