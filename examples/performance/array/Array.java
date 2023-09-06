import java.util.ArrayList;

class Test {
	public static void main(String[] args) {
		var arr = new ArrayList<Integer>();

		for(int i=0;i<100_000_000;i++) {
			arr.add(i);
		}
	}
}
