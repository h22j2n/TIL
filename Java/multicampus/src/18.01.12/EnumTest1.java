package day16;
enum Season{
	SPRING,SUMMER,FALL,WINTER
	
}
public class EnumTest1 {

	public static void main(String[] args) {
		System.out.println(Season.SPRING);
		System.out.println(Season.SUMMER);
		System.out.println(Season.FALL);
		System.out.println(Season.WINTER);
		Season data=Season.FALL; //Season�� ������ ��������
		if(data==Season.WINTER)
			System.out.println("����� �����ϴ� ������ ����!!");

	}

}
