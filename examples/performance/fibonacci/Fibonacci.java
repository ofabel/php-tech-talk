class Fibonacci {
    public static int fibonacci(int n) {
        return n < 3 ? 1 : (fibonacci(n - 1) + fibonacci(n - 2));
    }

	public static void main(String[] args) {
	    fibonacci(40);
	}
}
