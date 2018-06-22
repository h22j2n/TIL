package workshop6.exception;
class Account{
	private String account;
	private double balance;
	private double interestRate;
	public Account( ){
		
	}
	public Account(String account,double balance,double interestRate){
		this.account=account;
		this.balance=balance;
		this.interestRate=interestRate;
	}
	public double calculateInterest(){
		return balance*0.73;  //���� �ܾױ������� ����
	}
	public void deposit(double money)throws Exception{  //throw �����³�
		if(money<0){
			throw new Exception("�Աݱݾ��� 0���� �۴�"); //Exception �� ���̶� ����
		}else{
			balance+=money;
		}
	}
	public void withdraw(double money)throws Exception{
		if(money<0||balance<money){
			throw new Exception("��ݱݾ��� 0���� ���ų� �����ܾ׺��� ����");
		}
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public double getInterestRate() {
		return interestRate;
	}
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	
}
	



public class AccountTest {

	public static void main(String[] args) {
		Account account;
		account=new Account("441-0290-1203",500000,7.3);
		System.out.println(account.getAccount()+account.getBalance()+account.getInterestRate());
		try {
			account.deposit(-10);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		try {
			account.withdraw(600000);
		} catch (Exception e) {			
			System.out.println(e.getMessage());
		}
		System.out.println(account.calculateInterest());
	}

}
