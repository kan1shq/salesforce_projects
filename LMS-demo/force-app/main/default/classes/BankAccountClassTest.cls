@isTest
public class BankAccountClassTest {
    public static testmethod void main(){
        
        BankAccountClass obj = new BankAccountClass();
        obj.getValues();
        obj.setValues(101, 'John Doe', 10000);
        obj.deposit(10000);
        obj.balance();
        obj.withdraw(3000);
        obj.balance();
        obj.getValues();
        // get count;
        BankAccountClass.getCount();
        
        
        BankAccountClass obj1 = new BankAccountClass();
        obj1.getValues();
        obj1.setValues(102, 'Jane Doe', 10345);
        obj1.deposit(10000);
        obj1.balance();
        obj1.withdraw(1040);
        obj1.balance();
        obj1.getValues();
        // get count;
        BankAccountClass.getCount();
    }
}