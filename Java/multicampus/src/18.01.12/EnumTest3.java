package day16;
class Tour{
enum Season {
	SPRING,SUMMER,FALL,WINTER
}
}
public class EnumTest3 {

	public static void main(String[] args) {
		Tour.Season day[]=Tour.Season.values();//values�� ������� �迭�� �����Ѵ�
		for(Tour.Season value : day)           //valueof�� ��ȣ���� ����� ȣ��
			System.out.println(value);
		Tour.Season season = Tour.Season.valueOf("SUMMER"); 
		System.out.println("Tour.Season.valueOf(\"SUMMER\"):");
	}

}
