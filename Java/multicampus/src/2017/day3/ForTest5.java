package day3;
public class ForTest5 {
	public static void main(String[] args) {
		/*int count = (int)(Math.random() * 7) + 1;
		for(int i=1; i  <= count; i++)
			System.out.print('@');*/	
		// '$' ���ڸ� ����ϴ� ���๮���� �̿��Ͽ� ���� ���� ���
		// $
		// $$
		// $$$
		// $$$$
		// $$$$$
		for (int line = 1; line <= 5; line++) {			
			for (int num = 1; num <= line; num++) {
				System.out.print('$'); 
			}
			System.out.println();  
		}
		char munja = 'A';
		for (int line = 1; line <= 5; line++) {			
			for (int num = 1; num <= line; num++) {
				System.out.print(munja++); 
			}
			System.out.println();  
		}
		munja = '��';
		for (int line = 1; line <= 5; line++) {			
			for (int num = 1; num <= line; num++) {
				System.out.print(munja++); 
			}
			System.out.println();  
		}
	}
}
