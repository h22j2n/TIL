package day13;

import java.util.TreeSet;

public class ProducTest {

	public static void main(String[] args) {

		TreeSet<Product> set = new TreeSet<Product>();
		Product pro[] = new Product[4];
		pro[0] = new Product("p100", "TV", 20000);
		pro[1] = new Product("p200", "Computer", 10000);
		pro[2] = new Product("p100", "MP3", 700);
		pro[3] = new Product("p300", "Audio", 1000);
//		set.add(pro[0]);
//		set.add(pro[1]);
//		set.add(pro[2]);
//		set.add(pro[3]);

		for (Product pro1 : pro) {
			if (set.add(pro1)) {
				System.out.println("���������� ����Ǿ����ϴ�");
			} else {
				System.out.println("������ ID�� ��ǰ�� �̹� ����Ǿ����ϴ�");
			}
		}

		System.out.println("��ǰID" + "\t\t" + "��ǰ��" + "\t\t" + "����");
		System.out.println("-------------------------------------");
		for (Product pro2 : set) {
			System.out.println(pro2);
		}
	}

}
