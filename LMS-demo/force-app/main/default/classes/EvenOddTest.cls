@isTest
public class EvenOddTest {
    public static testmethod void main(){
        EvenOdd obj = new EvenOdd();
        
        // Odd Number
        obj.setValues(25);
        obj.getValues();
        obj.checker();
        obj.emptyNum();
        
        // Even Number
        obj.setValues(44);
        obj.getValues();
        obj.checker();
        obj.emptyNum();
    }
}