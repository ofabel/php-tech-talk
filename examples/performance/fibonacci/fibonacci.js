function fibonacci(n) {
    return n < 3 ? 1 : (fibonacci(n - 1) + fibonacci(n - 2));
}

fibonacci(40);
