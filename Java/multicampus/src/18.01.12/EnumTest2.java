package day16;
enum Season2 {
	봄,여름,가을,겨울
	
}
public class EnumTest2 {

	public static void main(String[] args) {
		System.out.println(Season2.봄);
		System.out.println(Season2.여름);
		System.out.println(Season2.가을);
		System.out.println(Season2.겨울);
		Season2 data=Season2.가을; //Season형 변수만 들어갈수있음
		if(data==Season2.가을)
			System.out.println("당신이 좋아하는 계절은 가을!!");

	}

}
