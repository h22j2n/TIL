package day6;

public class MethodLab4 {

	public static void main(String[] args) {
		int array1[]={10,20,30};                               //�Ű�����Ÿ�� int[]
		int array2[]={100,500,300,200,400};
		int array3[]={1,10,3,4,5,8,7,6,9,2};
		
		int max1=maxNumArray(array1);                         //�޼���� ����
		int max2=maxNumArray(array2);
		int max3=maxNumArray(array3);
		
		System.out.printf("���� ū ���� %d�Դϴ�.%n",max1);   //%d�� num���������� �������� �������ڴ�
		System.out.printf("���� ū ���� %d�Դϴ�.%n",max2);
		System.out.printf("���� ū ���� %d�Դϴ�.%n",max3);
		}
	
	public static int maxNumArray(int nums[]){       //�޼��������:maxNumArray,���ϰ� int������
		int maxResult=nums[0];  
		for(int i=0;i<nums.length;i++){   
			if(maxResult<nums[i])
				maxResult=nums[i];
		}
		
		return maxResult;
}
}
/*[ �ǽ� 4 ]

1. Ŭ������ : MethodLab4
2. �����ؾ� �ϴ� �޼���  
   �޼���� : maxNumArray
   �Ű����� Ÿ�� : int[]
   ���ϰ��� Ÿ�� : int

�Ű������� ���޵� �迭�� ���Ұ����߿��� ���� ū������
   
3. main() �޼��忡�� maxNumArray �� 3�� ȣ���Ѵ�.
   ���� �迭���� �����Ͽ�
   �迭 1 : 10, 20, 30
   �迭 2 : 100, 500, 300, 200, 400
   �迭 3 : 1, 10, 3, 4, 5, 8, 7, 6, 9, 2
  
   ���� ū ���� 30 �Դϴ�.
   ���� ū ���� 500 �Դϴ�.
   ���� ū ���� 10 �Դϴ�.*/
