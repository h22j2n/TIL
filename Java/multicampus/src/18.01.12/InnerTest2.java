package day16;

class LocalTest{
	String name ="Java";
	void pr(final String s) { //�Ű����� s
		final int su=100;  //�������� su , final ��������
		System.out.println(s+":"+su); //inner class ���� �����Ҽ� �ִ� ���������� final���ȴ� 	
    	class Local {                 //final �ȿ��� ������ ����� �ٲ�������
		void pr(String ls) {
			System.out.println("s:"+s);
			System.out.println("ls:"+ls);
			System.out.println(name);
			System.out.println(su);
		}
	}
	Local it=new Local();
	it.pr("Local Test");
}
}

public class InnerTest2 {

	public static void main(String[] args) {
		
	LocalTest l=new LocalTest();
	l.pr("Main Call");

	}

}
