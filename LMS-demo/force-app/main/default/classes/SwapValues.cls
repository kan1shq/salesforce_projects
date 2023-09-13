public class SwapValues {
	Integer x, y;
    
    public void setValues(Integer a, Integer b){
        x = a;
        y = b;
    }
    
    public void swap(){
        Integer temp;
        temp = x;
        x = y;
        y = temp;
    }
    
    public void getValues(){
        System.debug('First Number: ' + x + ' Second Number: ' + y);
    }
}