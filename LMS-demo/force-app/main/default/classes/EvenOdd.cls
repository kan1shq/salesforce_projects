public class EvenOdd {
	Integer num1;
    
    public void setValues(Integer x){
        num1 = x;
    }
    
    public void checker(){
        Integer x = num1;
        if(2*(x/2) == num1){
            System.debug('The given number is EVEN');
        }
        else{
            System.debug('The given number is ODD');
        }
    }
    
    public void emptyNum(){
        num1 = null;
    }
    
    public void getValues(){
        System.debug('The given number is ' + num1);
    }
}