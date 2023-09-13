public class BankAccountClass {
	Integer ac_no, ac_bal;
    String ach_name;
    static Integer count = 0;
    
    public BankAccountClass(){
        system.debug('Default Constructor Accessed.');
		ac_no = 0;
        ac_bal = 0;
        ach_name = 'no name';
        count++;
    }
    
    public void setValues(Integer ac_num, String name, Integer bal){
        ach_name = name;
        ac_no = ac_num;
        ac_bal = bal;
    }
    
    public void deposit(Integer x){
        ac_bal += x;
    }
    
    public void withdraw(Integer x){
        ac_bal -= x;
    }
    
    public void balance(){
        system.debug('Current Balance: ' + ac_bal);
    }
    
    public static void getCount(){
        system.debug('Number of customers are: ' + count);
    }
    
    public void getValues(){
        system.debug('Account number: ' + ac_no);
        system.debug('Account Holder Name: ' + ach_name);
        system.debug('Account Balance: ' + ac_bal);
    }
}