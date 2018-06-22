package day8;
import java.util.Scanner;
class GradeExpr2 {
	int[] jumsu;
	GradeExpr2(int[] jumsu) {
		this.jumsu = new int[jumsu.length];
		for (int i = 0; i < jumsu.length; i++) {
			this.jumsu[i] = jumsu[i];
		}
	}
	double getAverage() {
		double avg;
		avg = getTotal() / jumsu.length;
		return avg;
	}
	int getTotal() {
		int sum = 0;
		for (int i = 0; i < jumsu.length; i++) {
			sum += jumsu[i];
		}
		return sum;
	}
	int getGoodScore() {
		int good = 0;
		for (int i = 0; i < jumsu.length; i++) {
			if (good < jumsu[i])
				good = jumsu[i];
		}
		return good;
	}
	int getBadScore() {
		int bad = 10000000;
		for (int i = 0; i < jumsu.length; i++) {
			if (bad > jumsu[i])
				bad = jumsu[i];
		}
		return bad;
	}
}
public class GradeTest2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("ó���� ������ ������ �Է����ּ��� : ");
		int count = sc.nextInt();
		int jumsu[] = new int[count];
		System.out.print("�������� �Է����ּ��� : ");
		for (int i = 0; i < count; i++) {
			jumsu[i] = sc.nextInt();
		}
		GradeExpr2 g = new GradeExpr2(jumsu);
		sc.close();
		printScore(jumsu);
		System.out.printf("���� : %d\n", g.getTotal());
		System.out.printf("��� : %.2f\n", g.getAverage());
		System.out.printf("�ְ����� : %d\n", g.getGoodScore());
		System.out.printf("�������� : %d\n", g.getBadScore());
	}
	public static void printScore(int[] jumsu) {
		System.out.print("������ : ");
		for (int i = 0; i < jumsu.length; i++) {
			if (jumsu.length == (i + 1))
				System.out.printf("%d", jumsu[i]);
			else
				System.out.printf("%d,", jumsu[i]);
		}
		System.out.println();
	}
}
