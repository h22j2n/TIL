package day8;
import java.io.File;
import java.util.Scanner;
public class FileTest {
	public static void main(String[] args) {
		// �����Ϸ��� ���ϸ��̳� ���丮���� ǥ���Է�(Ű����)
		// ���� �޾� ó���ϵ��� �ҽ� ���� - Scanner
		System.out.print("�����Ϸ��� ���ϸ� �Է� : ");
		Scanner scan = new Scanner(System.in);
		String fileName = scan.nextLine();
		File f = new File(fileName);
		scan.close();
		if(f.exists()) {
			if(f.isDirectory()) {
				System.out.println("���丮�Դϴ�.");
			} else {
				System.out.println(f.length()+" ����Ʈ�� �����Դϴ�.");
			}
		} else {
			System.out.println("�������� �ʽ��ϴ�.");
		}
	}
}
