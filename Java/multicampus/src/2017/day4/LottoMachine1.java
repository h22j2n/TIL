package day4;
public class LottoMachine1 {
	public static void main(String[] args) {
		int[] num = new int[6];
		int cnt = 0;
		int tmp;
		boolean b;
		while (cnt < 6) {
			tmp = (int) (Math.random() * 45) + 1;
			b = false;
			for (int i = 0; i < cnt; i++) {
				if (num[i] == tmp) {
					b = true;
					break;
				}
			}
			if (!b)
				num[cnt++] = tmp;
		}
		System.out.print("������ �ε� ��ȣ - ");
		for (int i = 0; i < 6; i++) {
			if (i == 5)
				System.out.println(num[i]);
			else
				System.out.print(num[i] + ", ");
		}
	}
}
