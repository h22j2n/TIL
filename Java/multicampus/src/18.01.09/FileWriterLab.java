package day13;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

class KoreanDay {
	public static String day;
	public static String birth;
	static String korDayName[] = { "", "�Ͽ���", "������", "ȭ����", "������", "�����", "�ݿ���", "�����" };
	static {
		GregorianCalendar cal = new GregorianCalendar();
		int numDay = cal.get(Calendar.DAY_OF_WEEK);
		day = korDayName[numDay];
		
		cal.set(Calendar.YEAR,1992);
		cal.set(Calendar.MONTH,Calendar.JANUARY);
		cal.set(Calendar.DATE,28);
		int birthday =cal.get(Calendar.DAY_OF_WEEK);
		birth=korDayName[birthday];
	}
}

public class FileWriterLab {

	public static void main(String[] args) {

		String path ="C:/iotest";
		File isDir=new File(path);
		if(!isDir.exists()){
			isDir.mkdirs();
		}
		try (FileWriter writer=new FileWriter("c:/iotest/lab_0109.txt");){
			writer.write("������ ");
			writer.write(KoreanDay.day);
			writer.write("�Դϴ�.");	
			writer.write("\r\n");
			
			
			writer.write("���¿�� ");
			writer.write(KoreanDay.birth);
			writer.write("�� �¾���ϴ�.");	
			System.out.println("���� ����");
		}catch (IOException ioe){
			System.out.println("���Ϸ� ����Ҽ� ����");
		}

	}

}
