package day3;

public class ForLab2 {
	public static void main(String[] args) {
		int numOdd=1, numEven=1;
		for (int i = 5; i <= 20; i++) {
			if (i % 2 == 0) {
				numEven *= i; // numEven = numEven * i
			} else {
				numOdd *= i;
			}		
		}
		System.out.println("¦���ǰ� :" + numEven);
		System.out.println("Ȧ���ǰ� :" + numOdd);
	}
}
