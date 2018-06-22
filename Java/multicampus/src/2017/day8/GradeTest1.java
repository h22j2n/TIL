package day8;
import java.util.Scanner;
class GradeExpr1{
	int[] jumsu;
	GradeExpr1(int[] jumsu){
		this.jumsu =jumsu;
	}
	//�������
	double getAverage(){
		double average = (double)getTotal()/jumsu.length;		
		return average;
	}
	//����
	int getTotal(){
		int total=0;
		for (int i = 0; i < jumsu.length; i++) {
			total = total+jumsu[i];
		}
		return total;
	}
	//�ְ�����
	int getGoodScore(){
		int best=jumsu[0];
		for (int i = 0; i < jumsu.length; i++) {
			if(best<jumsu[i]) best=jumsu[i];
		}
		return best;
	}
	//��������
	int getBadScore(){
		int bad=jumsu[0];
		for (int i=0; i < jumsu.length; i++) {
			if(bad>jumsu[i]) bad=jumsu[i];
		}
		return bad;
	}
}

public class GradeTest1 {
	public static void main(String[] args) {
		System.out.print("�� ���� �����͸� �Է��Ͻðھ��? : ");
		Scanner scan = new Scanner(System.in);
		int dataCount = scan.nextInt();
		int score[]=new int[dataCount];		
		System.out.print("�����͸� �Է��� �ּ��� : ");
		for (int i = 0; i < score.length; i++) {
			score[i]=scan.nextInt();
		}
		System.out.println();
		//���� ���
		System.out.print("������ : ");
		for (int i = 0; i < score.length; i++) {
			if (i < score.length - 1)
				System.out.print(score[i] + ", ");
			else
				System.out.print(score[i]);
		}
		System.out.println();
		//Ŭ���� ����
		GradeExpr1 ge = new GradeExpr1(score);
		//���� ���
		System.out.print("���� : "+ ge.getTotal()+"\n");
		System.out.printf("��� : %.2f%n",ge.getAverage());
		System.out.printf("�ְ� ���� : %d%n",ge.getGoodScore());
		System.out.printf("���� ���� : %d%n",ge.getBadScore());
		scan.close();
	}
}



