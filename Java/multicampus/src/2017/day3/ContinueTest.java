package day3;
import java.util.Scanner;
public class ContinueTest {
	public static void main(String[] args) {
		final char DECO_MARK = '$';		
		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.print("���ڸ� �Է��ϼ��� : ");	
			int num = scan.nextInt();
			
			for (int i = 1; i <= num; i++) {
				for (int j = 1; j <= i; j++) {
					System.out.print(DECO_MARK);
				}
				System.out.println();
			}			
			System.out.print("��� �����Ϸ��� y�� �Է��ϼ���.. : ");
			String answer = scan.next();
			if(!answer.equals("y")) {
				System.out.println("������ �����մϴ�.");
				break;
			} 
		}
		scan.close();
	}
}






