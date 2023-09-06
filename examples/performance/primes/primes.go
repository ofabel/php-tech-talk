// gcc primes.c -lm -o primes

package main

import "fmt"
import "math"

const SIZE = 1000000

func main() {
    var known [SIZE]int
    known [0] = 2
    known [1] = 3

    var n = 5
    var i = 2
    var j = 1
    var limit = math.Sqrt(float64(n))

    for ; i < SIZE ; {
        var isPrime = true

        for j = 1; isPrime && float64(known[j]) < limit && j < i; j++ {
            if n % known[j] == 0 {
                isPrime = false
            }
        }

        if isPrime {
            known[i] = n
            i++

            fmt.Println(n)
        }

        n += 2
        limit = math.Sqrt(float64(n))
    }

    return
}
