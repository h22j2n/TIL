package day7;
class Book{
	String title;
	String author;
	int price;
	Book(){
		this("Java�� ����", "���ü�", 30000);
	}
	Book(String title,String author,int price){
		this.title=title;
		this.author=author;
		this.price=price;
		
	}
	String getBookInfo(){
		return title+" : "+author+" : "+price;
	}
}
public class BookTest {

	public static void main(String[] args) {
		Book book1=new Book();
		Book book2=new Book("�Ű������ ���","��ũ�ǽ�",13500);
		Book book3=new Book("���ν����� ������ ����","���ν���",12600);
		Book book4=new Book("����� �µ�","�̱���",12420);
		Book book5=new Book("Ʈ�����ڸ���2018","�賭��",16200);
		System.out.println(book1.getBookInfo());
		System.out.println(book2.getBookInfo());
		System.out.println(book3.getBookInfo());
		System.out.println(book4.getBookInfo());
		System.out.println(book5.getBookInfo());	
	}

}
