package day6;

public class MethodLab5 {

	public static void main(String[] args) {
		int r1[] = powerArray(2);                    //���θ޼��忡�� powerArray �� 3�� ȣ���Ѵ�.
		int r2[] = powerArray(3);                    //�Ű����� Ÿ�� : int
		int r3[] = powerArray(4);


		for (int i = 0; i < 10; i++)
			System.out.print(r1[i] + " ");
		System.out.println();
		for (int i = 0; i < 10; i++)
			System.out.print(r2[i] + " ");
		System.out.println();
		for (int i = 0; i < 10; i++)
			System.out.print(r3[i] + " ");
		System.out.println();
		
	}

	/*
	 * public static int getRandom(int n) 1 ���� n ���� ������ ���� ���� public static int
	 * getRandom(int n1, int n2) n1 ���� n2 ������ ���� ����
	 */

	public static int[] powerArray(int nums) {  //���ϰ��� Ÿ�� : int[]
		int arr[] = new int[10];          //1���� 10������ �ڿ��� �迭�� ����
		for (int i = 0; i < 10; i++)
			arr[i] = (i + 1) * nums;  //������ ���Ҹ� �Ű������� ���޵� ����ŭ ����� �����
		return arr;                       //�����Ѵ�

	}

}


/*[ �ǽ� 5 ]

1. Ŭ������ : MethodLab5
2. �����ؾ� �ϴ� �޼���  
   �޼���� : powerArray
   �Ű����� Ÿ�� : int
   ���ϰ��� Ÿ�� : int[]

   1���� 10������ �ڿ��� �迭�� ����
   ������ ���Ҹ� �Ű������� ���޵� ����ŭ ����� �����
   �����Ѵ�.

3. main() �޼��忡�� powerArray �� 3�� ȣ���Ѵ�.
   
	int r1[] = powerArray(2);
	int r2[] = powerArray(3);
	int r3[] = powerArray(4);

                [ ��� ��� ]
	2 4 6 8 10 12 14 16 18 20
 	3 6 9 12 15 18 21 24 27 30
	4 8 12 16 20 24 28 32 36 40*/	

