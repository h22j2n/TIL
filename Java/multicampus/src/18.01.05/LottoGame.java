package day11;

import java.util.Random;

class LottoMachine {
	private int nums[];

	public LottoMachine() {
		nums = new int[6];
	}

	public void createLottoNums() {
		Random r = new Random();
		for (int i = 0; i < nums.length; i++)
			nums[i] = r.nextInt(20) + 1;

	}

	public void checkLottoNums() throws DuplicateException {
		for (int i = 0; i < nums.length; i++) { // �迭�� 0���� 5���� �����������
			for (int j = i + 1; j < nums.length; j++) { // 1���� 6���� ������� ����
				if (nums[i] == nums[j]) { // nums�� i��ġ�� i+1(=j)��ġ�� �� �ϰ� �Ȱ�����
											// throw �ߵ�
					throw new DuplicateException(); // ���࿡ ���ڰ� ��ġ�� ���� ��ü�� ������
				}
			}
		}
	}

	public int[] getNums() {  
		return nums;
	}
}

class DuplicateException extends Exception {
	public DuplicateException() {
		super("�ߺ��� �ζ� ��ȣ�� �߻��߽��ϴ�.");
	}
}

public class LottoGame {

	public static void main(String[] args) {
		LottoMachine lotto = new LottoMachine();
		lotto.createLottoNums();
		
		try { // exceptionó���� �ʿ��� �Լ��� �ֱ⶧����
			lotto.checkLottoNums(); // �ߺ�üũ
			for (int i = 0; i < lotto.getNums().length; i++) {
				System.out.print(lotto.getNums()[i]);
				if (i < lotto.getNums().length - 1) {
					System.out.print(",");
				}
			}
		} catch (DuplicateException e) {
			System.out.println(e.getMessage()); // getmessage=���ܸ޼���
		}

	}

}
