// business class
public class FirstClass {
	Integer num1, num2;
    
    public void input(Integer x, Integer y){
        num1 = x;
        num2 = y;
    }
    
    public void output(){
        system.debug('the first number is ' + num1);
        system.debug('the second number is ' + num2);
    }
}