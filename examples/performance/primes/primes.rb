SIZE = 1_000_000
known = [2, 3]
n = 5
i = 2
j = 1
limit = Math.sqrt(n)
while i < SIZE do
    isPrime = true
    j = 1
    while isPrime && known[j] < limit && j < i do
        if n % known[j] == 0 then
            isPrime = false
        end
        j += 1
    end
    if isPrime then
        known[i] = n
        i += 1
        puts n
    end
    n += 2
    limit = Math.sqrt(n)
end
