@isTest
public class SwapValuesTest {
    public static testmethod void main(){
        SwapValues obj = new SwapValues();
        obj.setValues(12252, 50835);
        obj.getValues();
        obj.swap();  // after swapping 
        obj.getValues();
    }
}