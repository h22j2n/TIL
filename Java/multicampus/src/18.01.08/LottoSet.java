package day12;

import java.util.HashSet;

public class LottoSet {

	public static void main(String[] args) {
		int lotto=0;
		HashSet<Integer> set=new HashSet<Integer>();
		//HashSet �̶� �迭�������ε� �����͸� �ߺ����������ʴ´�
		
		while(set.size()!=10){
			lotto=(int)(Math.random()*21)+10;
			set.add(lotto);
		}
		int cnt =0;
		System.out.print("������ �ζ� ��ȣ:");
		for(int tto : set){
			System.out.print(tto);
			if(cnt!=9)
				System.out.print(",");
			
			cnt++;
		}
	}

}
