@isTest
public class ArithmeticExceptionTest {
    public static testmethod void main(){
        ArithmeticException obj = new ArithmeticException();
        obj.setValues(15, 5);
        
        obj.addValues();
        obj.divValues();
        obj.modValues();
        obj.subValues();
        obj.mulValues();
        
        obj.setValues(5, 0);
        
        obj.addValues();
        obj.divValues();
        obj.modValues();
        obj.subValues();
        obj.mulValues();
    }
}