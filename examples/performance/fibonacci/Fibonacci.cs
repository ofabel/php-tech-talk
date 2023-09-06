class Fibonacci {
    public static int fibonacci(int n) {
        return n < 3 ? 1 : (fibonacci(n - 1) + fibonacci(n - 2));
    }

    static void Main(string[] args)
    {
	    fibonacci(40);
	}
}
