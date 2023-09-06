class Objects {
    static class Box {
        public final int number;

        public Box(int number) {
            this.number = number;
        }
    }

	public static void main(String[] args) {
	    for(int i = 0; i < 100_000_000; i++) {
	        var o = new Box(i);
	    }
	}
}
