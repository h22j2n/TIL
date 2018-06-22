package day12;

import java.util.LinkedList;

import day8.Friend;

class Person {
	private String name;

	Person(String name) {
		this.name = name;
	}

	public String getInfo() {
		return name;
	}
}


public class FriendTestLinkedList{
	public static void main(String args[]){
		System.out.println("�̸�  "+"��ȭ��ȣ   "+"�����ּ�  "+"\n"+"------------------------");
		LinkedList <Friend>fr=new LinkedList<>();
		fr.add(new Friend("����  ","1588-5684  ","dif5684@naver.com"));
		fr.add(new Friend("����  ","1588-1548  ","fei1548@naver.com"));
		fr.add(new Friend("���  ","1588-7988  ","eie7988@naver.com"));
		fr.add(new Friend("����  ","1588-8492  ","rqq8492@naver.com"));
		fr.add(new Friend("¡��  ","1588-5654  ","ppp5654@naver.com"));
		
		
		for(Friend data:fr){
			System.out.println(data.getInfo());
	}

}
}







