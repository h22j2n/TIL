package day3;
public class BeakTest1 {
	public static void main(String[] args) {
		System.out.println("������");
		abc : for (int dan = 1; dan <= 9; dan++) {
			System.out.print(dan + "�� : ");  
			for (int num = 1; num <= 9; num++) {
				if(dan * num > 30)
					break abc;
				System.out.print(dan * num + "\t"); 
			}
			System.out.println();  
		}
	}
}



