package day14;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.util.Date;

import day6.Student;

public class SeralTest3 {

	public static void main(String[] args) throws Exception{
	FileOutputStream fos= new FileOutputStream("c:/iotest/test2.ser");
	ObjectOutputStream oos = new ObjectOutputStream(fos);
	oos.writeObject(new Date());
	Thread.sleep(3000);
	oos.writeObject(new Date());
	Student st=new Student("duke",23,"java���α׷���");
	oos.writeObject(st);
	oos.close();
	fos.close();
	System.out.println("����ȭ ��� �Ϸ�");

	}

}
