package day14;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

public class URLTest1 {

	public static void main(String[] args) {
		try{
			URL req= new URL("http://www.weather.go.kr/wid/queryDFSRSS.jsp?zone=1153053000");
			InputStream is = req.openStream(); 
			InputStreamReader isr = new InputStreamReader(is,"UTF-8");  //���� �Ѱ����д� �۾� ����
			BufferedReader br = new BufferedReader(isr);                //���� ���پ��д� �۾� ����
			
			while(true){
				String data=br.readLine();//�ѹ���Ʈ�� �д´�
				if(data==null)
					break;
				System.out.print(data);
			}
		}catch(MalformedURLException e){
			System.out.println("URL���ڿ� ����:"+e.getMessage());
		}catch(IOException e){
			System.out.print("IO����:"+e.getMessage());
		}
	

	}

}
