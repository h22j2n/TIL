package day4;
public class ArrayLab2 {
	public static void main(String[] args) {
		//�迭 ���� ���� �ʱ�
		char[] letter = {'J', 'a', 'v', 'a', 'D', 'u', 'k', 'e'};
		for(int i=0; i<letter.length; i++){
			//�ҹ����̸�
			if(letter[i] >= 'a' && letter[i] <= 'z'){
				letter[i] = (char)(letter[i] - 32);
				}
			//�빮���̸�
			else if(letter[i] >= 65 && letter[i] <= 90){
				letter[i] = (char)(letter[i] + 32);
				}
		}
		for(int j=0; j<letter.length; j++){
			if(j<letter.length-1){
				System.out.print(letter[j] + ",");
			}
			else if(j==letter.length-1){
				System.out.print(letter[j]);
				break;
			}
		}		
	}
}

/*

�ҹ��ڿ� �빮���� �ƽ�Ű �ڵ��� ���̰� 32�ΰ��� Ȱ���Ѵ�.

���� ���, A ���� a �� ������� 32�� ���ϰ� �ݴ��� ��쿣 ���� �ȴ�. 

���ĺ� �ƽ�Ű �ڵ�� ������ ����. ���ĺ��� �� 26�� ���ڷ� �Ǿ� ����. 

A-65  Z-90  a-97  z-122 

65<= char <=90 �̸� �빮��, 97<= char <= 122 �̸� �ҹ����̴�. 

�Ǵ�

'A'<= char <='Z' , 'a'<=char <'z' 
*/