public class ArithmeticException extends Exception {
	Integer num_1, num_2, res;
    
    public void setValues(Integer x, Integer y){
        num_1 = x;
        num_2 = y;
    }
    
    public void addValues(){
        res = num_1 + num_2;
        System.debug('Addition: ' + res);
    }
    
    public void subValues(){
        res = num_1 - num_2;
        System.debug('Subtraction: ' + res);
    }
    
    public void mulValues(){
        res = num_1 * num_2;
        System.debug('Product: ' + res);
    }
    
    public void modValues(){
        try{
            res = num_1 - (num_1 / num_2)*num_2;
        	System.debug('Modulus: ' + res);
        }
        catch(Exception e){
            System.debug('Cannot divide by zero in arithmetic operations.');
        }
    }
    
    public void divValues(){
        try{
            res = num_1 / num_2;
        	System.debug('Division: ' + res);
        }
        catch(Exception e){
            System.debug('Cannot divide by zero in arithmetic operations.');
        }
    }
}