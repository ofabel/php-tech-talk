package main

func fibonacci(n int) int {
    if n < 3 {
        return 1
    }

    return fibonacci(n - 1) + fibonacci(n - 2);
}

func main() {
    fibonacci(40)
}
