package day14;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

import javax.imageio.ImageIO;

public class URLTest2 {

	public static void main(String[] args) {
		String imageName= "c:/iotest/duke1.jpg";  //�������̵����
		try{
			URL req= new URL("http://fardamento.netshoes.net/BR/LNetshoes/production/20141031/BADGE/20141031BADGE0014096.jpg");
			InputStream is = req.openStream(); //URL�ڵ带 �����ϱ����� �߰��ٸ�����
			BufferedImage bi=ImageIO.read(is); //�̹����� �ٸ� txt������ �ٸ��� Read�� �����Ҽ��ִ�
			for(int y=0;y<bi.getHeight();y++){
				for(int x=0;x<bi.getWidth();x++){
					Color color=new Color(bi.getRGB(x,y));
					int Y=(int)(0.299*color.getRed()+0.587*color.getGreen()+0.114*color.getBlue());
					bi.setRGB(x, y,new Color(Y,Y,Y).getRGB());
				}
			}
		
			FileOutputStream fos=new FileOutputStream(imageName); //����ִ� jpg������ ����
		ImageIO.write(bi, "JPG", fos);
		fos.close();
			System.out.println(imageName+"�� ���������� ����");
		}catch(MalformedURLException e){
			System.out.println("URL���ڿ� ����:"+e.getMessage());
		}catch(IOException e){
			System.out.print("IO����:"+e.getMessage());
		}
	

	}

}
