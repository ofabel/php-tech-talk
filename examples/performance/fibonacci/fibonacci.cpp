// g++ -o fibonacci++ fibonacci.cpp -Ofast

int fibonacci(int n) {
    return n < 3 ? 1 : (fibonacci(n - 1) + fibonacci(n - 2));
}

int main() {
    fibonacci(40);
}
