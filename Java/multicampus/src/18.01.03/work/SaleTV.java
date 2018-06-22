package work;

public class SaleTV extends TV {
	private int price;
	public SaleTV() {}
	public SaleTV(int price, String model, int size, int channel) {
		super(model,size,channel);
		this.price = price;
	}
	public void play() {
		System.out.println("�Ǹ� TV ä�� " + getChannel() + "���� ���θ� �÷��� �մϴ�.");
	}
	public void sale() {
		System.out.println(getModel()+" ���� ��ǰ�� �Ǹ��մϴ�. "+String.format("%,d", price)+"���� ������ �ּ���");
	}
	public String toString() {
		return "�ǸŻ�ǰ���� : �𵨸�("+getModel()+"), ����("+String.format("%,d", price)+"��), ũ��("+getSize()+")";
	}

}
