package day4;
public class ArrayLab1 {
	public static void main(String[] args) {
		System.out.print("��� ������ �� : " );
		int nums[] = new int[10];
		//�迭�� 4-20 ���� ����
		for(int i=0; i<nums.length; i++){
			nums[i] = (int)(Math.random()*17)+4;
			if(i<nums.length-1){
				System.out.print(nums[i] + ",");
			} else {
				System.out.print(nums[i]);				
			}
		}		
		System.out.println();		
		//��� ������ ��
		int total=0;
		for(int i=0; i<nums.length; i++){
			total+=nums[i];
		}		
		System.out.print("��� ������ �� : " + total);
	}
}
