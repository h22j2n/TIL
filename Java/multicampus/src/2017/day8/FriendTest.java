package day8;
class Person {
	private String name;
	Person(String name) {
		this.name = name;
	}
	public String getInfo() {
		return name;
	}
}
class Friend extends Person {
	private String phoneNum;
	private String email;
	Friend(String name, String phoneNum, String email) {
		super(name);
		this.email = email;
		this.phoneNum = phoneNum;
	}
	public String getInfo() {
		return super.getInfo() + phoneNum + email;
	}
}
public class FriendTest{
	public static void main(String args[]){
		System.out.println("�̸�  "+"��ȭ��ȣ  "+"�����ּ�  "+"\n"+"------------------------");
		Friend fr[]=new Friend[5]; //�迭����
		fr[0]=new Friend("����  ","1588-5684  ","dif5684@naver.com");
		fr[1]=new Friend("����  ","1588-1548  ","fei1548@naver.com");
		fr[2]=new Friend("���  ","1588-7988  ","eie7988@naver.com");
		fr[3]=new Friend("����  ","1588-8492  ","rqq8492@naver.com");
		fr[4]=new Friend("¡��  ","1588-5654  ","ppp5654@naver.com");
		for(int i=0;i<fr.length;i++){
			System.out.println(fr[i].getInfo());
		}
		for(Friend data  :  fr){
			System.out.println(data.getInfo());
		}
	}
}







