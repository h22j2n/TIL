package day14;

public class StringBufferTest {

	public static void main(String[] args) {
		StringBuffer buffer = new StringBuffer();
		String str = "자바프로그래밍";
		buffer.append(str);

		System.out.printf("%s\n", buffer);
		buffer.reverse();  //거꾸로
		System.out.printf("%s\n", buffer);
		System.out.printf("길이 : %d\n", buffer.length()); 
		System.out.printf(" %c\n", buffer.reverse().charAt(0)); //원래대로
		System.out.printf("%s\n", buffer.reverse());

	}
}


